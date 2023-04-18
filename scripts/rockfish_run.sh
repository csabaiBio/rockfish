# How to run rockfish:
# rockfish inference -i <saved_fast5_files> --reference <reference_path> --model_path <model_path> -r -t <n_workers> -b <batch_size> -d <devices> -o <output>
# <model_path>: ~/packages/rf_models_rf*.ckpt
# <n_workers>: 2
# <batch_size>: default (4096)
# <devices>: 0

# r.9 / chr20 / num-0
rockfish inference -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr20/guppy/workspace/single_read/0/ --reference /media/storage_3/mb/nanopore_data/analysis/ref_sequences/sequence_chr20.fasta --model_path ~/packages/rf_models/rf_base.ckpt -t 2 -d 0 -o /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr20/guppy/workspace/single_read/predictions_0.tsv

# r.9 / chr20 / num-1
rockfish inference -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr20/guppy/workspace/single_read/1/ --reference /media/storage_3/mb/nanopore_data/analysis/ref_sequences/sequence_chr20.fasta --model_path ~/packages/rf_models/rf_base.ckpt -t 2 -d 0 -o /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr20/guppy/workspace/single_read/predictions_1.tsv

# r.9 / chr20 / num-2
rockfish inference -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr20/guppy/workspace/single_read/2/ --reference /media/storage_3/mb/nanopore_data/analysis/ref_sequences/sequence_chr20.fasta --model_path ~/packages/rf_models/rf_base.ckpt -t 2 -d 0 -o /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr20/guppy/workspace/single_read/predictions_2.tsv

# r.9 / chr20 / num-3
rockfish inference -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr20/guppy/workspace/single_read/3/ --reference /media/storage_3/mb/nanopore_data/analysis/ref_sequences/sequence_chr20.fasta --model_path ~/packages/rf_models/rf_base.ckpt -t 2 -d 0 -o /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr20/guppy/workspace/single_read/predictions_3.tsv

# r.9 / chr20 / num-4
rockfish inference -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr20/guppy/workspace/single_read/4/ --reference /media/storage_3/mb/nanopore_data/analysis/ref_sequences/sequence_chr20.fasta --model_path ~/packages/rf_models/rf_base.ckpt -t 2 -d 0 -o /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr20/guppy/workspace/single_read/predictions_4.tsv

# r.9 / chr20 / num-5
rockfish inference -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr20/guppy/workspace/single_read/5/ --reference /media/storage_3/mb/nanopore_data/analysis/ref_sequences/sequence_chr20.fasta --model_path ~/packages/rf_models/rf_base.ckpt -t 2 -d 0 -o /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr20/guppy/workspace/single_read/predictions_5.tsv

# r.9 / chr20 / num-6
rockfish inference -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr20/guppy/workspace/single_read/6/ --reference /media/storage_3/mb/nanopore_data/analysis/ref_sequences/sequence_chr20.fasta --model_path ~/packages/rf_models/rf_base.ckpt -t 2 -d 0 -o /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr20/guppy/workspace/single_read/predictions_6.tsv

# r.9 / chr20 / num-7
rockfish inference -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr20/guppy/workspace/single_read/7/ --reference /media/storage_3/mb/nanopore_data/analysis/ref_sequences/sequence_chr20.fasta --model_path ~/packages/rf_models/rf_base.ckpt -t 2 -d 0 -o /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr20/guppy/workspace/single_read/predictions_7.tsv

# r.9 / chr20 / num-8
rockfish inference -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr20/guppy/workspace/single_read/8/ --reference /media/storage_3/mb/nanopore_data/analysis/ref_sequences/sequence_chr20.fasta --model_path ~/packages/rf_models/rf_base.ckpt -t 2 -d 0 -o /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr20/guppy/workspace/single_read/predictions_8.tsv

# r.9 / chr20 / num-9
rockfish inference -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr20/guppy/workspace/single_read/9/ --reference /media/storage_3/mb/nanopore_data/analysis/ref_sequences/sequence_chr20.fasta --model_path ~/packages/rf_models/rf_base.ckpt -t 2 -d 0 -o /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr20/guppy/workspace/single_read/predictions_9.tsv

# r.9 / chr21 / num-0
rockfish inference -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr21/guppy/workspace/single_read/0/ --reference /media/storage_3/mb/nanopore_data/analysis/ref_sequences/sequence_chr21.fasta --model_path ~/packages/rf_models/rf_base.ckpt -t 2 -d 0 -o /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr21/guppy/workspace/single_read/predictions_0.tsv

# r.9 / chr21 / num-1
rockfish inference -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr21/guppy/workspace/single_read/1/ --reference /media/storage_3/mb/nanopore_data/analysis/ref_sequences/sequence_chr21.fasta --model_path ~/packages/rf_models/rf_base.ckpt -t 2 -d 0 -o /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr21/guppy/workspace/single_read/predictions_1.tsv

# r.9 / chr21 / num-2
rockfish inference -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr21/guppy/workspace/single_read/2/ --reference /media/storage_3/mb/nanopore_data/analysis/ref_sequences/sequence_chr21.fasta --model_path ~/packages/rf_models/rf_base.ckpt -t 2 -d 0 -o /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr21/guppy/workspace/single_read/predictions_2.tsv

# r.9 / chr21 / num-3
rockfish inference -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr21/guppy/workspace/single_read/3/ --reference /media/storage_3/mb/nanopore_data/analysis/ref_sequences/sequence_chr21.fasta --model_path ~/packages/rf_models/rf_base.ckpt -t 2 -d 0 -o /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr21/guppy/workspace/single_read/predictions_3.tsv

# r.9 / chr21 / num-4
rockfish inference -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr21/guppy/workspace/single_read/4/ --reference /media/storage_3/mb/nanopore_data/analysis/ref_sequences/sequence_chr21.fasta --model_path ~/packages/rf_models/rf_base.ckpt -t 2 -d 0 -o /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr21/guppy/workspace/single_read/predictions_4.tsv

# r.9 / chr21 / num-5
rockfish inference -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr21/guppy/workspace/single_read/5/ --reference /media/storage_3/mb/nanopore_data/analysis/ref_sequences/sequence_chr21.fasta --model_path ~/packages/rf_models/rf_base.ckpt -t 2 -d 0 -o /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr21/guppy/workspace/single_read/predictions_5.tsv

# r.9 / chr21 / num-6
rockfish inference -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr21/guppy/workspace/single_read/6/ --reference /media/storage_3/mb/nanopore_data/analysis/ref_sequences/sequence_chr21.fasta --model_path ~/packages/rf_models/rf_base.ckpt -t 2 -d 0 -o /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr21/guppy/workspace/single_read/predictions_6.tsv

# r.9 / chr22 / num-0
rockfish inference -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr22/guppy/workspace/single_read/0/ --reference /media/storage_3/mb/nanopore_data/analysis/ref_sequences/sequence_chr22.fasta --model_path ~/packages/rf_models/rf_base.ckpt -t 2 -d 0 -o /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr22/guppy/workspace/single_read/predictions_0.tsv

# r.9 / chr22 / num-1
rockfish inference -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr22/guppy/workspace/single_read/1/ --reference /media/storage_3/mb/nanopore_data/analysis/ref_sequences/sequence_chr22.fasta --model_path ~/packages/rf_models/rf_base.ckpt -t 2 -d 0 -o /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr22/guppy/workspace/single_read/predictions_1.tsv

# r.9 / chr22 / num-2
rockfish inference -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr22/guppy/workspace/single_read/2/ --reference /media/storage_3/mb/nanopore_data/analysis/ref_sequences/sequence_chr22.fasta --model_path ~/packages/rf_models/rf_base.ckpt -t 2 -d 0 -o /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr22/guppy/workspace/single_read/predictions_2.tsv

# r.9 / chr22 / num-3
rockfish inference -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr22/guppy/workspace/single_read/3/ --reference /media/storage_3/mb/nanopore_data/analysis/ref_sequences/sequence_chr22.fasta --model_path ~/packages/rf_models/rf_base.ckpt -t 2 -d 0 -o /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr22/guppy/workspace/single_read/predictions_3.tsv

# r.9 / chr22 / num-4
rockfish inference -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr22/guppy/workspace/single_read/4/ --reference /media/storage_3/mb/nanopore_data/analysis/ref_sequences/sequence_chr22.fasta --model_path ~/packages/rf_models/rf_base.ckpt -t 2 -d 0 -o /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr22/guppy/workspace/single_read/predictions_4.tsv

# r.9 / chr22 / num-5
rockfish inference -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr22/guppy/workspace/single_read/5/ --reference /media/storage_3/mb/nanopore_data/analysis/ref_sequences/sequence_chr22.fasta --model_path ~/packages/rf_models/rf_base.ckpt -t 2 -d 0 -o /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr22/guppy/workspace/single_read/predictions_5.tsv

# r.9 / chr22 / num-6
rockfish inference -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr22/guppy/workspace/single_read/6/ --reference /media/storage_3/mb/nanopore_data/analysis/ref_sequences/sequence_chr22.fasta --model_path ~/packages/rf_models/rf_base.ckpt -t 2 -d 0 -o /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr22/guppy/workspace/single_read/predictions_6.tsv

# r.9 / chr22 / num-7
rockfish inference -i /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr22/guppy/workspace/single_read/7/ --reference /media/storage_3/mb/nanopore_data/analysis/ref_sequences/sequence_chr22.fasta --model_path ~/packages/rf_models/rf_base.ckpt -t 2 -d 0 -o /media/storage_3/mb/nanopore_data/analysis/r9.4.1/20200914_1354_6B_PAF27096_e7c9eae6/guppy_v4.0.11_r9.4.1_hac_prom/align_unfiltered/chr22/guppy/workspace/single_read/predictions_7.tsv
