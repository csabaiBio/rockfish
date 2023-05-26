from datetime import datetime
start_program = datetime.now()

# Select Rockfish model:
import argparse
parser = argparse.ArgumentParser()
parser.add_argument('-m', '--model', type=str, required=True, help="Rockfish model (base or small)")
model = parser.parse_args().model

if model not in ['base', 'small']:
    print('Wrong argument. Model name must be given. Possible: base or small')
    exit(-1)
print(f'#Run rockfish methylation selection on {model} model data.')


import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from matplotlib.colors import LogNorm
import seaborn as sns
import collections as coll
from glob import glob
path  = '/media/storage_3/mb/nanopore_data/analysis/'
rockfish = f'r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr22/freqs_{model}/'



dfs = list()
print('Reading tsv files.')
for i, f in enumerate(glob(path+rockfish+'*')):
    data = pd.read_csv(f, sep='\t', names=['contig', 'start', 'end', 'freq', 'n_mod', 'n_nomod'])
    dfs.append(data)

print('Concatenate dataframes.')
df_= pd.concat(dfs, ignore_index=False)
print('Writing tsv file.')
df.to_csv(path+rockfish+'all_freq.tsv')

print(f'Script finished (in { round((datetime.now()-start_program).total_seconds()/60, 3) } min).')
