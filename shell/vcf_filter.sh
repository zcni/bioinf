#!/bin/bash
# filter variants of all vcf files with QUAL
filelist=`ls *.vcf`
for file in $filelist
do 
    head -19 $file >header.txt
    sed -n '20.$p' $file >content.txt
    awk -F '\t' '{if($6 > 30){print;}}' content.txt >>all.vcf
    rm -f header.txt content.txt
done
