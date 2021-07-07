function MPL_preprocess_6(data_dir,this_set,protein,bsample_size_percentage,num_bsample,output_dir,genome_start,genome_end,gamma,thresh)

thisSet=char(this_set);
thisProt=char(protein);
pathdirw0=char(output_dir);
factor=char(bsample_size_percentage);
num_bsample=str2double(num_bsample);
datadir=char(data_dir);
thisGenomicSegStartInd=str2double(genome_start);
thisGenomicSegStopInd=str2double(genome_end);
reg=str2double(gamma);
noisethresh=str2double(thresh);
% max_seq_length=str2double(maximum_sequence_length);
% max_tp=str2double(maximum_time_points);
% pathdirw0=char(output_dir);
% scripts=char(script_dir);
% MAFFTloc=char(MAFFT_loc);
% bsample_dirs=char(output_dir+'bsamples'+'/'+this_set);
% dir_contents=dir(bsample_dirs);
% temp_names={dir_contents.name};
% names=char(temp_names(1,3:end));
% [numdir,~]=size(names);
% bsample_start=str2double(first_bsample);

PreprocessingStep_0_7;

PreProcessingStep_1_8;

AnalysisMPL_9

end