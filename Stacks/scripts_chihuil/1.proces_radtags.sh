#!/bin/bash

mkdir -p ../process_radtags
mkdir -p ../cleaned
mkdir -p ../logos

nohup process_radtags -f ../raw/uiu_ddRAD_dataset_R1_.fastq.gz -o ../cleaned/  -b ../info/uiu_ddRAD_barcodes.tsv   \
--inline_null -c -q -r -e ecoRI  -i gzfastq &> ../logos/process.log &

