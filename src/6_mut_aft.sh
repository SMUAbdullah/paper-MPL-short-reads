#!/bin/sh

data_dir=$1
output_dir=$2
this_set=$3
patient=$4
protein=$5
varscan_loc=$6

./6_0_BAM_to_SNP.sh $data_dir $output_dir $this_set $patient $protein $varscan_loc

python 6_1_SNP_to_mut_aft.py $data_dir $output_dir $this_set $patient $protein

exit 0
