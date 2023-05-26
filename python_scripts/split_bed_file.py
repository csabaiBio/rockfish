import numpy as np
from glob import glob

path = '/media/storage_3/mb/nanopore_data/analysis/bed_files/'
needed_chr = [1,20,21,22]

fnames = glob(path+'*.tsv')
splitted = []
for i in fnames:
    splitted.append(int(i[len(path)+3: -4]))


not_splitted = []
for element in needed_chr:
    if element not in splitted:
        not_splitted.append(element)


if len(not_splitted) >=1:
    with open(path+'all.cpg.bed') as f:
        for line in f:
            try:
                x=int(line[3:5])
            except:
                break
            if x in not_splitted:
                with open(path+f'chr{x}.tsv', 'a') as f2:
                    f2.write(line)
    print('finished')
else:
    print('All needed chr splitted.')
    

