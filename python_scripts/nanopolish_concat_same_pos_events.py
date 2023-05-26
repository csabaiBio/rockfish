import numpy as np
import pandas as pd


path = '/media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr22/nanopolish/chr22/'
df=pd.read_csv(path+'chr22.eventalign.tsv', sep='\t', nrows=20000000) #20M
# wc -l chr22.eventaling.tsv --> 427,625,437 

unique_pos = np.unique(df.position)
kmers = np.zeros([len(unique_pos), 3], dtype='object')
for i, unique in enumerate(unique_pos):
    kmers[i,0] = df[df.position == unique].event_length.sum()
    kmers[i,1] = df[df.position == unique].event_level_mean.mean()
    kmers[i,2] = list(df[df.position == unique].reference_kmer)[0]
    print(f'{np.round(i/(len(unique_pos)-1)*100, 2)}%', end='\r')
print('Sorted by unique position finished.')

df_kmers = pd.DataFrame(kmers, columns=['time', 'current', 'kmer'])

time_and_current_per_kmer={}
num_of_kmer = {}
kmers_unique = np.unique(df_kmers.kmer)
for i, k in enumerate(kmers_unique):
    num_of_kmer[k] = len(df_kmers[df_kmers.kmer == k])
    time_and_current_per_kmer[k] = [df_kmers[df_kmers.kmer == k].time.values, df_kmers[df_kmers.kmer == k].current.values]
print('Sorted by kmer finished.')


# Save num_of_kmer, and time_and_current_per_kmer
np.save(path+'num_of_kmer.npy', num_of_kmer)
print('Saved: num_of_kmer.npy')
np.save(path+'time_and_current_per_kmer.npy', time_and_current_per_kmer)
print('Saved: time_and_current_per_kmer.npy')
