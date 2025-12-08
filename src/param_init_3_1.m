% getSysParam;
% ng = Nin;
% multip_fac=10;
% reg_QR=10;
% priorConst=1;

thisset=char(this_set);
max_seq_length=str2double(maximum_sequence_length);
max_tp=str2double(maximum_time_points);
pathdirw0=char(output_dir);
scripts=char(script_dir);
datadir=char(data_dir);
MAFFTloc='mafft';
bsample_dirs=char(output_dir+'bsamples'+'/'+this_set);
dir_contents=dir(bsample_dirs);
temp_names={dir_contents.name};
names=char(temp_names(1,3:end));
[numdir,~]=size(names);
bsample_start=str2double(first_bsample);
num_bsample=str2double(num_bsample);

scriptdir=[scripts 'alignment_scripts/' thisset '/'];
if(exist(scriptdir, 'dir') == 0)
    mkdir(scriptdir)
end

scriptcalldir=[scripts 'alignment_script_call/' thisset '/'];
if(exist(scriptcalldir, 'dir') == 0)
    mkdir(scriptcalldir)
end

scriptmaincalldir=[scripts 'alignment_script_main_call/' thisset '/'];
if(exist(scriptmaincalldir, 'dir') == 0)
    mkdir(scriptmaincalldir)
end

pathdirw20=[pathdirw0 'renamed/' thisset '/'];
if(exist(pathdirw20, 'dir') == 0)
    mkdir(pathdirw20)
end

pathdirw50=[pathdirw0 'renamed_imputed/' thisset '/'];
if(exist(pathdirw50, 'dir') == 0)
    mkdir(pathdirw50)
end

pathdirw70=[pathdirw0 'consensi_seqs/' thisset '/'];
if(exist(pathdirw70, 'dir') == 0)
    mkdir(pathdirw70)
end

pathdirw110=[pathdirw0 'ref_appended_consensi_aligned/' thisset '/'];
if(exist(pathdirw110, 'dir') == 0)
    mkdir(pathdirw110)
end

pathdirw140=[pathdirw0 'aligned_consensi/' thisset '/'];
if(exist(pathdirw140, 'dir') == 0)
    mkdir(pathdirw140)
end

pathdirw170=[pathdirw0 'aligned/' thisset '/'];
if(exist(pathdirw170, 'dir') == 0)
    mkdir(pathdirw170)
end

% pathdirw240=[pathdirw0 'post_imputed/' thisset '/'];
% if(exist(pathdirw240, 'dir') == 0)
%     mkdir(pathdirw240)
% end

pathdirw270=[pathdirw0 'append_ref/' thisset '/'];
if(exist(pathdirw270, 'dir') == 0)
    mkdir(pathdirw270)
end

pathdirw290=[pathdirw0 'final_folder/' thisset '/'];
if(exist(pathdirw290, 'dir') == 0)
    mkdir(pathdirw290)
end

for dir_num=1:numdir

% pathdirw_log=[char(logs_dir) 'renaming/'];
% if(exist(pathdirw_log, 'dir') == 0)
%     mkdir(pathdirw_log)
% end

thisbsample=char(names(dir_num,:));

pathdirw2=[pathdirw20 thisbsample '/'];
if(exist(pathdirw2, 'dir') == 0)
    mkdir(pathdirw2)
end

pathdirw5=[pathdirw50 thisbsample '/'];
if(exist(pathdirw5, 'dir') == 0)
    mkdir(pathdirw5)
end

pathdirw7=[pathdirw70 thisbsample '/'];
if(exist(pathdirw7, 'dir') == 0)
    mkdir(pathdirw7)
end

scriptfirstcalldir=[scriptcalldir thisbsample '/'];
if(exist(scriptfirstcalldir, 'dir') == 0)
    mkdir(scriptfirstcalldir)
end

pathdirw11=[pathdirw110 thisbsample '/'];
if(exist(pathdirw11, 'dir') == 0)
    mkdir(pathdirw11)
end

pathdirw14=[pathdirw140 thisbsample '/'];
if(exist(pathdirw14, 'dir') == 0)
    mkdir(pathdirw14)
end

pathdirw17=[pathdirw170 thisbsample '/'];
if(exist(pathdirw17, 'dir') == 0)
    mkdir(pathdirw17)
end

% pathdirw24=[pathdirw240 thisbsample '/'];
% if(exist(pathdirw24, 'dir') == 0)
%     mkdir(pathdirw24)
% end

pathdirw27=[pathdirw270 thisbsample '/'];
if(exist(pathdirw27, 'dir') == 0)
    mkdir(pathdirw27)
end

end
