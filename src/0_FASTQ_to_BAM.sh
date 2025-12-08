#!/bin/bash

data_dir=$1
output_dir=$2
this_set=$3
patient=$4
protein=$5

BAM_maindir="${output_dir}BAM/"
pat_dir="${data_dir}reads/${this_set}/MSA/${patient}/${protein}/"
ref_dir="${data_dir}reads/${this_set}/ref/${patient}_ref/${protein}/"

mkdir -p "${BAM_maindir}${this_set}/${patient}/${protein}/"

cd ${ref_dir}
bwa index "${patient}_${protein}_ref.fa"
samtools faidx "${patient}_${protein}_ref.fa"

cd ${pat_dir}

# Function to process files
process_files() {
    local r1_file=$1
    local r2_file=$2
    local is_paired=$3
    
    if [ "$is_paired" = true ]; then
        base_name=$(echo "$r1_file" | sed -E 's/(_R?1|_1|\.1|_forward|_fwd)(\..*)?$//')
        echo "Processing PAIRED: $r1_file + $r2_file"
        bwa_cmd="bwa mem -k 15 '${ref_dir}${patient}_${protein}_ref.fa' '${pat_dir}${r1_file}' '${pat_dir}${r2_file}'"
    else
        base_name=$(echo "$r1_file" | cut -f 1 -d '.')
        echo "Processing SINGLE: $r1_file"
        bwa_cmd="bwa mem -k 15 '${ref_dir}${patient}_${protein}_ref.fa' '${pat_dir}${r1_file}'"
    fi
    
    output_dir="${BAM_maindir}${this_set}/${patient}/${protein}/${base_name}/"
    mkdir -p "$output_dir"
    
    # Execute alignment and processing
    eval "$bwa_cmd" > "${output_dir}${base_name}.sam"
    
    samtools view -bt "${ref_dir}${patient}_${protein}_ref.fai" "${output_dir}${base_name}.sam" > "${output_dir}${base_name}.bam"
    samtools sort "${output_dir}${base_name}.bam" > "${output_dir}${base_name}-sorted.bam"
    samtools index "${output_dir}${base_name}-sorted.bam"
    
    rm "${output_dir}${base_name}.sam" "${output_dir}${base_name}.bam"
    
    samtools view -bq 1 -F 4 "${output_dir}${base_name}-sorted.bam" > "${output_dir}${base_name}_sorted.bam"
    rm "${output_dir}${base_name}-sorted.bam" "${output_dir}${base_name}-sorted.bam.bai"
    
    samtools index "${output_dir}${base_name}_sorted.bam"
    samtools depth "${output_dir}${base_name}_sorted.bam" > "${output_dir}${base_name}_sorted_depth.txt"
}

# Find all R1 files for paired-end
for file in *; do
    if [[ -f "$file" ]]; then
        # Check for R1 patterns
        if [[ "$file" =~ (_R?1|_1|\.1|_forward|_fwd) ]]; then
            base=$(echo "$file" | sed -E 's/(_R?1|_1|\.1|_forward|_fwd)(\..*)?$//')
            # Look for corresponding R2 file
            r2_candidate=$(find . -maxdepth 1 -name "${base}*" | grep -E "(_R?2|_2|\.2|_reverse|_rev)" | head -1 | sed 's|^\./||')
            if [[ -n "$r2_candidate" && -f "$r2_candidate" ]]; then
                process_files "$file" "$r2_candidate" true
            else
                process_files "$file" "" false
            fi
        fi
    fi
done

# Process remaining files that don't match R1 patterns (single-end)
for file in *; do
    if [[ -f "$file" ]]; then
        # Skip files that were already processed as R1
        if [[ ! "$file" =~ (_R?1|_1|\.1|_forward|_fwd) ]] && \
           [[ ! "$file" =~ (_R?2|_2|\.2|_reverse|_rev) ]]; then
            process_files "$file" "" false
        fi
    fi
done

exit 0
