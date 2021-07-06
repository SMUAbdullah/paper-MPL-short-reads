disp('Final folder reconstruction');

% pathdirw_log=[pathdirw_log0 'final_folder_gen/'];
% if(exist(pathdirw_log, 'dir') == 0)
%     mkdir(pathdirw_log)
% end

apr_dir=char(output_dir+'append_ref'+'/'+thisset);
pathdirw=[pathdirw0 'final_folder/' thisset '/' thisset '_M' num2str(num_bsample) '/'];
if(exist(pathdirw, 'dir') == 0)
    mkdir(pathdirw)
end
  
bsample_count=1;
for dir_num=bsample_start:bsample_start+num_bsample-1
    disp(['Bsample:' num2str(dir_num)]);
    thisbsample=char(names(dir_num,:));
    
    pathdirr=[apr_dir '/' thisbsample '/'];
    
    pat_dir_contents=dir(pathdirr);
    temp_pat_names={pat_dir_contents.name};
    pat_names=char(temp_pat_names(1,3:end));
    [numpatdir,~]=size(pat_names);
    
    for pat_num=1:numpatdir
        thispat=pat_names(pat_num,:);
        pat_dir=[pathdirr thispat];
        pat_dirw=[pathdirw thispat];
        if(exist(pat_dirw, 'dir') == 0)
            mkdir(pat_dirw)
        end
        pat_dir_contents=dir(pat_dir);
        temp_prot_names={pat_dir_contents.name};
        prot_names=char(temp_prot_names(1,3:end));
        [numprotdir,~]=size(prot_names);
        for prot_num=1:numprotdir
            thisprot=prot_names(prot_num,:);
            prot_dir=[pat_dir '/' thisprot];
            prot_dirw=[pat_dirw '/' thisprot];
            if(exist(prot_dirw, 'dir') == 0)
                mkdir(prot_dirw)
            end
            prot_dir_contents=dir(prot_dir);
            temp_tp_names={prot_dir_contents.name};
            tp_names=char(temp_tp_names(1,3:end));
            [numtpdir,~]=size(tp_names);
            for tp_num=1:numtpdir
                thistp=tp_names(tp_num,:);
                thistp=thistp((~isspace(thistp)));
                tp_dir=[prot_dir '/' thistp];
                in_file=[tp_dir '/' thistp '.fasta'];
                
                thistp_temp0=split(thistp,'.fasta');
                thistp_temp1=split(thistp_temp0(1,1),'_');
                thistp_temp2=split(thistp_temp1(3,1),'t');
                thistp_time=char(thistp_temp2(2,1));
                
                out_file=[prot_dirw '/' thispat '_' thisprot '_bsample' num2str(bsample_count) 'of' num2str(num_bsample) '_t' thistp_time '.fasta'];
                
                [status,msg] = copyfile(in_file,out_file);
            end
        end
    end
    bsample_count=bsample_count+1;
end