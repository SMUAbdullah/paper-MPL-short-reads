disp('MSA files generation');

% pathdirw_log=[pathdirw_log0 'alignment_gen/'];
% if(exist(pathdirw_log, 'dir') == 0)
%     mkdir(pathdirw_log)
% end
% 
% pathdirw_log1=[pathdirw_log0 'alignment/'];
% if(exist(pathdirw_log1, 'dir') == 0)
%     mkdir(pathdirw_log1)
% end

consensi_dirs=char(output_dir+'aligned_consensi'+'/'+thisset);

scriptmaincallalgn=[scriptmaincalldir '/' 'alignment' '/'];
if(exist(scriptmaincallalgn, 'dir') == 0)
    mkdir(scriptmaincallalgn)
end

filemaincallID = fopen([scriptmaincallalgn 'alignment_main_call' '.sh'],'w');
fprintf(filemaincallID,'#!/bin/sh\n\n');

for dir_num=1:numdir
    disp(['Bsample:' num2str(dir_num)]);
    thisbsample=char(names(dir_num,:));
    
    pathdirr=[consensi_dirs '/' thisbsample '/'];
    pathdirw_aln=[pathdirw0 'aligned/' thisset '/' thisbsample '/'];
    scripts_dir=[scripts 'alignment_scripts/' thisset '/' thisbsample '/'];
    scripts_call_dir=[scripts 'alignment_script_call/' thisset '/' thisbsample '/'];
    
    pat_dir_contents=dir(pathdirr);
    temp_pat_names={pat_dir_contents.name};
    pat_names=char(temp_pat_names(1,3:end));
    [numpatdir,~]=size(pat_names);
    
    filecallID = fopen([scripts_call_dir '/' 'align_call' '.sh'],'w');
        
    fprintf(filecallID,'#!/bin/sh\n\n');
    fprintf(filecallID,['echo "Bsample: ' num2str(dir_num) '"' '\n\n']);
    fprintf(filecallID,['chmod -R 700 ' scripts_dir '\n']);
    
    fprintf(filemaincallID,['chmod -R 700 ' scripts_call_dir '\n']);
    fprintf(filemaincallID,[scripts_call_dir 'align_call' '.sh' '\n']);

    for pat_num=1:numpatdir
        thispat=pat_names(pat_num,:);
        pat_dir=[pathdirr thispat];
        pat_dirw=[pathdirw_aln thispat];
        pat_dirws=[scripts_dir thispat];
        if(exist(pat_dirw, 'dir') == 0)
            mkdir(pat_dirw)
        end
        if(exist(pat_dirws, 'dir') == 0)
            mkdir(pat_dirws)
        end
        pat_dir_contents=dir(pat_dir);
        temp_prot_names={pat_dir_contents.name};
        prot_names=char(temp_prot_names(1,3:end));
        [numprotdir,~]=size(prot_names);
        for prot_num=1:numprotdir
            thisprot=prot_names(prot_num,:);
            prot_dir=[pat_dir '/' thisprot];
            prot_dirw=[pat_dirw '/' thisprot];
            prot_dirws=[pat_dirws '/' thisprot];
            if(exist(prot_dirw, 'dir') == 0)
                mkdir(prot_dirw)
            end
            if(exist(prot_dirws, 'dir') == 0)
                mkdir(prot_dirws)
            end
            prot_dir_contents=dir(prot_dir);
            temp_tp_names={prot_dir_contents.name};
            tp_names=char(temp_tp_names(1,3:end));
            [numtpdir,~]=size(tp_names);
            for tp_num=1:numtpdir
                thistp=tp_names(tp_num,:);
                thistp_file=thistp((~isspace(thistp)));
                thistp_temp=split(thistp_file,'_consensus.fasta');
                thistp=char(thistp_temp(1,1));
                tp_file=[prot_dir '/' thistp_file];
                tp_dirw=[prot_dirw '/' thistp];
                if(exist(tp_dirw, 'dir') == 0)
                    mkdir(tp_dirw)
                end
                
                ref_file=tp_file;
                tgt_file=char([pathdirw0 'renamed_imputed/' thisset '/' thisbsample '/' thispat '/' thisprot '/' thistp '/' thistp '.fasta']);
                out_file=[tp_dirw '/' thistp '.fasta'];
                
                code_loc=MAFFTloc;
                command = [code_loc ' --amino --thread -1 --addfragments "' tgt_file '" "' ref_file '" > "' out_file '"'];
                
                fileID = fopen([prot_dirws '/' thistp '_align' '.sh'],'w');
                fprintf(fileID,'#!/bin/sh\n\n');
                %             fprintf(fileID,['cp "' ref_file_fa '" "' ref_file '"\n']);
                %             fprintf(fileID,['TIMEFORMAT=' '' '%%3R' '']);
                %             fprintf(fileID,'\n');
                % fprintf(fileID,['{ time ' command ' 2>1 ; } 2>> "' logfile1 '"']);
                % fprintf(fileID,'\n');
                fprintf(fileID,command);
                fprintf(fileID,'\n');
                %             fprintf(fileID,'rm -rf 1\n');
                %             fprintf(fileID,['rm "' ref_file '"\n\n']);
                fprintf(fileID,'exit 0');
                fclose(fileID);
                [status0,cmdout0] = system(['chmod -R 700 ' prot_dirws '/' thistp '_align' '.sh']);
                % el_time=toc;
                % fprintf(logfileID,[num2str(el_time) '\n']);
                fprintf(filecallID,[prot_dirws '/' thistp '_align' '.sh' '\n']);
            end       
        end
    end
end
fprintf(filemaincallID,'exit 0');
fclose(filemaincallID);
[status2,cmdout2] = system(['chmod -R 700 ' scriptmaincalldir]);