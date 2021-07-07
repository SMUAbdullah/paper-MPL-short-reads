#!/bin/sh

data_dir=$1
output_dir=$2
this_set=$3
patient=$4
protein=$5

BAM_maindir="${output_dir}BAM/"

if [ ! -d ${BAM_maindir} ]; then
  mkdir ${BAM_maindir}
fi

BAM_dir="${BAM_maindir}${this_set}/"
pat_dir="${data_dir}reads/${this_set}/MSA/${patient}/${protein}/"
ref_dir="${data_dir}reads/${this_set}/ref/${patient}_ref/${protein}/"

if [ ! -d ${BAM_dir} ]; then
  mkdir ${BAM_dir}
fi

cd ${ref_dir}
bwa index "${patient}_${protein}_ref.fa" # create BWA index

cd ${pat_dir}
for filename in *
do
fastq_file=$(echo "$filename" | cut -f 1 -d '.') #remove extension
if [ ! -d "${BAM_dir}${patient}/" ]; then
  mkdir "${BAM_dir}${patient}/"
fi
if [ ! -d "${BAM_dir}${patient}/${protein}/" ]; then
  mkdir "${BAM_dir}${patient}/${protein}/"
fi
if [ ! -d "${BAM_dir}${patient}/${protein}/${fastq_file}/" ]; then
  mkdir "${BAM_dir}${patient}/${protein}/${fastq_file}/"
fi

bwa mem -k 15 "${ref_dir}${patient}_${protein}_ref.fa" "${pat_dir}${filename}" > "${BAM_dir}${patient}/${protein}/${fastq_file}/${fastq_file}.sam" # perform alignment
samtools faidx "${ref_dir}${patient}_${protein}_ref.fa"
samtools view -bt "${ref_dir}${patient}_${protein}_ref.fai" "${BAM_dir}${patient}/${protein}/${fastq_file}/${fastq_file}.sam" > "${BAM_dir}${patient}/${protein}/${fastq_file}/${fastq_file}.bam"
samtools sort "${BAM_dir}${patient}/${protein}/${fastq_file}/${fastq_file}.bam" > "${BAM_dir}${patient}/${protein}/${fastq_file}/${fastq_file}-sorted.bam"
samtools index "${BAM_dir}${patient}/${protein}/${fastq_file}/${fastq_file}-sorted.bam"
rm "${BAM_dir}${patient}/${protein}/${fastq_file}/${fastq_file}.sam" "${BAM_dir}${patient}/${protein}/${fastq_file}/${fastq_file}.bam"
samtools view -bq 1 -F 4 "${BAM_dir}${patient}/${protein}/${fastq_file}/${fastq_file}-sorted.bam" > "${BAM_dir}${patient}/${protein}/${fastq_file}/${fastq_file}_sorted.bam"
rm "${BAM_dir}${patient}/${protein}/${fastq_file}/${fastq_file}-sorted.bam"
rm "${BAM_dir}${patient}/${protein}/${fastq_file}/${fastq_file}-sorted.bam.bai"
samtools index "${BAM_dir}${patient}/${protein}/${fastq_file}/${fastq_file}_sorted.bam"
samtools depth "${BAM_dir}${patient}/${protein}/${fastq_file}/${fastq_file}_sorted.bam" > "${BAM_dir}${patient}/${protein}/${fastq_file}/${fastq_file}_sorted_depth.txt" # find sampling depth
done
exit 0
