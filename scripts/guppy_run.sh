## Run Guppy with GPU 

# r.9 config: dna_r9.4.1_450bps_hac_prom.cfg
# r.10 config: dna_r10.3_450bps_hac_prom.cfg

guppy_basecaller --version # 6.3.8 to use --fast5_out


# r.9 / chr20
guppy_basecaller -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr20/fast5/ -r -s /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr20/guppy/ -c dna_r9.4.1_450bps_hac_prom.cfg -x 'auto' --fast5_out

# r.9 / chr21
guppy_basecaller -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr21/fast5/ -r -s /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr21/guppy/ -c dna_r9.4.1_450bps_hac_prom.cfg -x 'auto' --fast5_out

# r.9 / chr22
guppy_basecaller -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr22/fast5/ -r -s /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr22/guppy/ -c dna_r9.4.1_450bps_hac_prom.cfg -x 'auto' --fast5_out
