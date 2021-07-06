#!/bin/sh

# Add paths to required software
#--------------------------------------------------------------------
samtools_loc="/staff/ee/smuabdullah/Desktop/1_Files/samtools-1.8/samtools"
quasirecomb_loc="/staff/ee/smuabdullah/Desktop/1_Files/QuasiRecomb/QuasiRecomb.jar"
MAFFT_loc="/staff/ee/smuabdullah/Desktop/1_Files/MAFFT/bin/mafft"
export PATH=/staff/ee/smuabdullah/Desktop/1_Files/bwa-0.7.17:$PATH
export PATH=/staff/ee/smuabdullah/Desktop/1_Files/samtools-1.8:$PATH
export PATH=/local1/staff/ee/smuabdullah/Files/Anaconda3/bin:$PATH
export PATH=/local/opt/MATLAB/R2017a:$PATH
#--------------------------------------------------------------------

cd ..
main_dir=$(pwd)/
this_set="564"
protein="synth"
#declare -a patients=("p1" "p2" )
declare -a patients=("p1" )
data_dir=${main_dir}"data/"
script_dir=${main_dir}"src/"
output_dir=${main_dir}"output/"
logs_dir=${main_dir}"logs/"
bash_scripts_dir=${main_dir}"bash_scripts/"

bsample_size=5000
bsample_size_percentage=33
first_bsample=1
num_bsample=3
#num_bsample=1
maximum_sequence_length=1500 		# decides the maximum length of the sequence. User is welcome to adjust based on requirement
maximum_time_points=40 		# decides the maximum number of time points. User is welcome to adjust based on requirement
: '
for patient in ${patients[@]}
do
# Convert FASTQ files to BAM files
#--------------------------------------------------------------------

cd $script_dir
./0_FASTQ_to_BAM.sh $data_dir $output_dir $this_set $patient $protein

#--------------------------------------------------------------------
# Split BAM files to obtain bootstrap samples
#--------------------------------------------------------------------

cd $script_dir
for((curr_bsample=$first_bsample;curr_bsample<=$num_bsample;curr_bsample++));
do python 1_BAM_subsample.py $samtools_loc $data_dir $output_dir $this_set $patient $protein $bsample_size $bsample_size_percentage $curr_bsample
done

#--------------------------------------------------------------------

# Generate files to perform population reconstruction on the bootstrap samples
#--------------------------------------------------------------------

cd $script_dir
for((curr_bsample=$first_bsample;curr_bsample<=$num_bsample;curr_bsample++));
do python 2_reconstruction_files_gen.py $quasirecomb_loc $output_dir $bash_scripts_dir $logs_dir $this_set $patient $protein $bsample_size $bsample_size_percentage $curr_bsample
done

#--------------------------------------------------------------------

# Perform population reconstruction on the bootstrap samples (this is a time consuming step, and it is highly recommended that it be performed in parallel to save computation time)
#--------------------------------------------------------------------

chmod -R 700 ${bash_scripts_dir}"reconstruction_call/"${this_set}
cd ${bash_scripts_dir}"reconstruction_call/"${this_set}
for filename in *
do ./${filename} # an & sign can be placed after this command. It is used for running the commands in parallel. It is recommended to first test the code in serial. After testing, the code can be run in parallel. Running multiple processes in parallel without testing can lead to the creation of a number of unwanted processes which are difficult to kill, hence it is a good practice to test in serial first.
wait
done

#--------------------------------------------------------------------
done
'

# Preprocess the reconstructed files for analysis
#--------------------------------------------------------------------
: '
cd $script_dir
matlab -nodisplay -nojvm -nosplash -nodesktop -r "QR_pipeline_func_0_3(\"${data_dir}\",\"${this_set}\",\"${protein}\",\"${bsample_size_percentage}\",\"${maximum_sequence_length}\",\"${maximum_time_points}\",\"${first_bsample}\",\"${num_bsample}\",\"${output_dir}\",\"${bash_scripts_dir}\",\"${MAFFT_loc}\"); exit";

cd $bash_scripts_dir"alignment_script_main_call/${this_set}/consensi_alignment"
for filename in *
do ./${filename}
done

cd $script_dir
matlab -nodisplay -nojvm -nosplash -nodesktop -r "QR_pipeline_func_1_4(\"${data_dir}\",\"${this_set}\",\"${protein}\",\"${bsample_size_percentage}\",\"${maximum_sequence_length}\",\"${maximum_time_points}\",\"${first_bsample}\",\"${num_bsample}\",\"${output_dir}\",\"${bash_scripts_dir}\",\"${MAFFT_loc}\"); exit";

cd $bash_scripts_dir"alignment_script_main_call/${this_set}/alignment"
for filename in *
do ./${filename}
done

cd $script_dir
matlab -nodisplay -nojvm -nosplash -nodesktop -r "QR_pipeline_func_2_5(\"${data_dir}\",\"${this_set}\",\"${protein}\",\"${bsample_size_percentage}\",\"${maximum_sequence_length}\",\"${maximum_time_points}\",\"${first_bsample}\",\"${num_bsample}\",\"${output_dir}\",\"${bash_scripts_dir}\",\"${MAFFT_loc}\"); exit";
'
#--------------------------------------------------------------------

# MPL estimation
#--------------------------------------------------------------------



#--------------------------------------------------------------------

exit 0
