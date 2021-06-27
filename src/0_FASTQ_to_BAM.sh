#!/bin/sh

data_dir=$1
output_dir=$2
this_set=$3
experiment=$4

BAM_dir="${output_dir}${this_set}_BAM/"
exp_dir="${data_dir}${this_set}/${experiment}/"
ref_dir="${data_dir}${this_set}/${experiment}_ref/"

if [ ! -d ${BAM_dir} ]; then
  mkdir ${BAM_dir}
fi

cd ${ref_dir}
bwa index "${experiment}_ref.fa" # create BWA index

cd ${exp_dir}
for filename in *
do
fastq_file=$(echo "$filename" | cut -f 1 -d '.') #remove extension
if [ ! -d "${BAM_dir}${experiment}/" ]; then
  mkdir "${BAM_dir}${experiment}/"
fi
if [ ! -d "${BAM_dir}${experiment}/${fastq_file}/" ]; then
  mkdir "${BAM_dir}${experiment}/${fastq_file}/"
fi
bwa mem -k 15 "${ref_dir}${experiment}_ref.fa" "${exp_dir}${filename}" > "${BAM_dir}${experiment}/${fastq_file}/${fastq_file}.sam" # perform alignment
samtools faidx "${ref_dir}${experiment}_ref.fa"
samtools view -bt "${ref_dir}${experiment}_ref.fai" "${BAM_dir}${experiment}/${fastq_file}/${fastq_file}.sam" > "${BAM_dir}${experiment}/${fastq_file}/${fastq_file}.bam"
samtools sort "${BAM_dir}${experiment}/${fastq_file}/${fastq_file}.bam" > "${BAM_dir}${experiment}/${fastq_file}/${fastq_file}-sorted.bam"
samtools index "${BAM_dir}${experiment}/${fastq_file}/${fastq_file}-sorted.bam"
rm "${BAM_dir}${experiment}/${fastq_file}/${fastq_file}.sam" "${BAM_dir}${experiment}/${fastq_file}/${fastq_file}.bam"
samtools view -bq 1 -F 4 "${BAM_dir}${experiment}/${fastq_file}/${fastq_file}-sorted.bam" > "${BAM_dir}${experiment}/${fastq_file}/${fastq_file}_sorted.bam"
rm "${BAM_dir}${experiment}/${fastq_file}/${fastq_file}-sorted.bam"
rm "${BAM_dir}${experiment}/${fastq_file}/${fastq_file}-sorted.bam.bai"
samtools index "${BAM_dir}${experiment}/${fastq_file}/${fastq_file}_sorted.bam"
samtools depth "${BAM_dir}${experiment}/${fastq_file}/${fastq_file}_sorted.bam" > "${BAM_dir}${experiment}/${fastq_file}/${fastq_file}_sorted_depth.txt" # find sampling depth
done
exit 0
