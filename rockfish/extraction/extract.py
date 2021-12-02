import numpy as np
import mappy

from dataclasses import dataclass
import re

from typing import *

from fast5 import ReadInfo
from alignment import AlignmentInfo, align_read


@dataclass
class Example:
    read_id: str
    ctg: str
    pos: int
    signal: List[float]
    cigar: List[int]
    bases: str


MotifPositions = dict[str, Tuple[Set[int], Set[int]]]


def build_reference_idx(aligner: mappy.Aligner, motif: str,
                        rel_idx: int) -> MotifPositions:
    positions = OrderedDict()

    for contig in aligner.seq_names:
        sequence = aligner.seq(contig)

        fwd_pos = {
            m.start() + rel_idx
            for m in re.finditer(motif, sequence, re.I)
        }

        rev_comp = mappy.revcomp(sequence)

        def pos_for_rev(i: int) -> int:
            return len(sequence) - (i + rel_idx) - 1

        rev_pos = {
            pos_for_rev(m.start())
            for m in re.finditer(motif, rev_comp, re.I)
        }

        positions[contig] = (fwd_pos, rev_pos)

    return positions


def get_ref_pos(aln_info: AlignmentInfo, ref_positions: MotifPositions,
                window: int) -> Iterator[int]:
    if aln_info.fwd_strand:
        ctg_pos = ref_positions[aln_info.ctg][0]
    else:
        ctg_pos = ref_positions[aln_info.ctg][1]

    if aln_info.fwd_strand:
        rng = range(aln_info.r_start + window, aln_info.r_end - window)
    else:
        rng = range(aln_info.r_end - 1 - window, aln_info.r_start - 1 + window,
                    -1)
    for rel, rpos in enumerate(rng, start=window):
        if rpos in ctg_pos:
            yield rel, rpos


def extract_features(read_info: ReadInfo, ref_positions: MotifPositions,
                     aligner: mappy.Aligner, window: int) -> Optional[None]:

    seq_to_sig = read_info.get_seq_to_sig()
    signal = read_info.get_normalized_signal(end=seq_to_sig[-1]) \
                        .astype(np.half)
    query, _ = read_info.get_seq_and_quals()

    aln_info = align_read(query, aligner)
    if aln_info is None:
        return None

    ref_seq = aligner.seq(aln_info.ctg, aln_info.r_start, aln_info.r_end)
    ref_seq = ref_seq if aln_info.fwd_strand else mappy.revcomp(ref_seq)

    examples = []
    for rel, pos in get_ref_pos(aln_info, ref_positions, window):
        q_start = aln_info.ref_to_query[rel - window]
        sig_start = seq_to_sig[q_start]

        # q_end -> Start of the first base after example
        q_end = aln_info.ref_to_query[rel + window + 1]
        # sig_end -> Start of the first signal point after example
        sig_end = seq_to_sig[q_end]

        example = Example(read_info.read_id, aln_info.ctg, pos,
                          signal[sig_start:sig_end],
                          ref_seq[rel - window:rel + window + 1])
        examples.append(example)

    return examples