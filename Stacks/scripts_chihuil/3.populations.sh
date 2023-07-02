#!/bin/bash

#PASO 9. Run populations. Calculate Hardy-Weinberg deviation, population statistics, f-statistics and smooth the statistics across the genome. Export several output files.

cp ../info/uiu_popmap.tsv .
mv uiu_popmap.tsv popmap.tsv
mkdir -p ../populations_NOFILTERS


nohup populations -P ../stacks.denovo \
 -O ../populations_NOFILTERS \
-M  popmap.tsv \
-r 0.80 --max-obs-het 0.7 --vcf --plink --genepop \
 --fasta-loci --fstats --sigma 100000 --structure --hwe &> ../logos/populations_nofilters &

