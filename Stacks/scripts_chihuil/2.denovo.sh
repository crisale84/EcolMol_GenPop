#!/bin/bash

mkdir -p ../stacks.denovo

nohup denovo_map.pl -M 2 -n 2 -m 3 -T 8 -r 80 --samples ../cleaned/ --popmap ../info/uiu_popmap_test.tsv \
-o ../stacks.denovo -X "populations: --max-obs-het 0.7 --vcf --plink --genepop \
 --fasta-loci --fstats --structure --hwe" &> ../logos/denovo_M2_n2_m3_r80.log &
