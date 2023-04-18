#!/bin/bash

# Download data from Nanopolish
#wget https://www.dropbox.com/s/4ga4j1diftabn8n/example.tar.gz?dl=0 -O /media/storage_3/mb/nanopore_data/rf_example/example.tar.gz
#tar -xzf /media/storage_3/mb/nanopore_data/rf_example/example.tar.gz
cd /media/storage_3/mb/nanopore_data/rf_example/example

# Download small model ### saved to ~/packages/rf_models ###
#rockfish download -m small -s .

# Run inference with GPU

rockfish inference -i /media/storage_3/mb/nanopore_data/rf_example/example/fast5/\
  --model_path ~/packages/rf_models/rf_small.ckpt -d 0 -t 2\
  --reference /media/storage_3/mb/nanopore_data/rf_example/example/chm13v2.0_chr20.fa.gz