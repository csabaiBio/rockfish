import numpy as np
from glob import glob

from ont_fast5_api.fast5_interface import get_fast5_file


path = '/media/storage_3/mb/nanopore_data/analysis/r10.3/20200914_1358_2-E5-H5_PAF26161_2e3c81af/guppy_v4.0.11_r10.3_hac_prom/align_unfiltered/chr20/'
NUM_of_batch_files = len(glob(path+'fast5/*.fast5'))

fnames = []
for i in range(NUM_of_batch_files):
    fnames.append(path+f'fast5/batch{i}.fast5')

print(fnames[-1])

data = []
with get_fast5_file(fnames[-1], mode="r") as f:
    for read in f.get_reads():
        data.append(read.get_raw_data())
print('Own dataset')
print(data[0], len(data[0]))


# -----------------
data2 = []
fst5  = '/media/storage_3/mb/nanopore_data/rf_example/example/fast5/DEAMERNANOPORE_20161117_FNFAB43577_MN16450_sequencing_run_MA_821_R9_4_NA12878_11_17_16_88738_ch1_read445_strand.fast5'
with get_fast5_file(fst5, mode="r") as f5:
    for read in f5.get_reads():
        data2.append(read.get_raw_data())
print('Example dataset', ())
print(data2[0])