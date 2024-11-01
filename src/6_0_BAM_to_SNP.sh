#!/bin/sh

data_dir=$1
output_dir=$2
this_set=$3
patient=$4
protein=$5
varscan_loc=$6

BAM_dir="${output_dir}BAM/${this_set}/"
pat_dir="${BAM_dir}${patient}/${protein}/"
ref_dir="${data_dir}reads/${this_set}/ref/${patient}_ref/${protein}/"

echo ${varscan_loc}

cd ${pat_dir}
for filename in *
do cd "${pat_dir}${filename}"

samtools mpileup -f "${ref_dir}${patient}_${protein}_ref.fa" "${filename}_sorted.bam" > "${filename}.mpileup"
java -jar ${varscan_loc} readcounts "${filename}.mpileup" --output-file "${filename}_SNP.txt" --min-base-qual 30

done

exit 0
