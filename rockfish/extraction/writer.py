from pathlib import Path
from collections import defaultdict
from itertools import count
import struct

from typing import List, Set

from extract import Example


class BinaryWriter:
    def __init__(self, path: Path, ref_names: Set[str], seq_len: int) -> None:
        self.path = path
        self.S = seq_len

        self.ref_ids = {n: i for i, n in enumerate(ref_names)}
        self.n_examples = 0
        self.idx_pointer = 0

    def __enter__(self):
        self.fd = self.path.open('wb')
        self.fd_idx = open(str(self.path) + '.idx', 'wb')

        return self

    def __exit__(self, exc_type, exc_val, exc_tb):
        self.fd.close()

    def write_example(self, example: Example) -> None:
        ref_id = self.ref_ids[example.ctg]
        n_points = len(example.signal)

        data = struct.pack(f'=36sHIH{n_points}e{self.S}s',
                           str.encode(example.read_id), ref_id, example.pos,
                           len(example.signal), *example.signal,
                           str.encode(example.bases))

        self.fd.write(data)
        self.n_examples += 1

        self.idx_pointer += len(data)
        self.fd_idx.write(struct.pack('=Q', self.idx_pointer))

    def write_examples(self, examples: List[Example]) -> None:
        for example in examples:
            self.write_example(example)

    def write_header(self) -> None:
        n_refs = len(self.ref_ids)
        data = struct.pack('=H', n_refs)

        for ref_name, _ in self.ref_ids.items():
            ref_len = len(ref_name)
            data += struct.pack(f'=B{ref_len}s', ref_len, str.encode(ref_name))

        self.header_offset = len(data)
        data += struct.pack('=I', 0)  # Placeholder for n_examples

        self.fd.write(data)

        self.fd_idx.write(struct.pack('=I', 0))  # Number of examples

        self.idx_pointer = len(data)
        self.fd_idx.write(struct.pack(
            '=Q', self.idx_pointer))  # Start of the first example

    def write_n_examples(self) -> None:
        self.fd.seek(self.header_offset)
        data = struct.pack('=I', self.n_examples)
        self.fd.write(data)

        self.fd_idx.seek(0)
        data = struct.pack('=I', self.n_examples)
        self.fd_idx.write(data)