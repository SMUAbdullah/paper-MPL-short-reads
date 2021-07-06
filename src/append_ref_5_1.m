disp('Append reference');

% pathdirw_log=[pathdirw_log0 'append_ref/'];
% if(exist(pathdirw_log, 'dir') == 0)
%     mkdir(pathdirw_log)
% end

aln_dir=char(output_dir+'aligned'+'/'+thisset);
WT_dir=[datadir 'reads/' thisset '/WT/'];

for dir_num=1:numdir
    disp(['Bsample:' num2str(dir_num)]);
    thisbsample=char(names(dir_num,:));
    
    pathdirr=[aln_dir '/' thisbsample '/'];
    pathdirw=[pathdirw0 'append_ref/' thisset '/' thisbsample '/'];
    
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
            WT_file=[WT_dir thispat '_WT' '/' thisprot '/' thispat '_' thisprot '_WT.fa'];
            [refheader,refsequence]=fastaread(WT_file);
            for tp_num=1:numtpdir
                thistp=tp_names(tp_num,:);
                thistp=thistp((~isspace(thistp)));
                tp_dir=[prot_dir '/' thistp];
                tp_dirw=[prot_dirw '/' thistp];
                if(exist(tp_dirw, 'dir') == 0)
                    mkdir(tp_dirw)
                end
                in_file=[tp_dir '/' thistp '.fasta'];
                out_file=[tp_dirw '/' thistp '.fasta'];
                if(~exist(out_file,'file'))
                    if(exist(in_file,'file'))
                        [Header,Sequence]=fastaread(in_file);
                        tempseq=(string(Sequence))';
                        
                        seq=[refsequence;tempseq(2:end,1)];
                        Header=[refheader,Header(1,2:end)];
                        
                        modifseq=cellstr(seq');
                        
                        fastawrite(out_file,Header,modifseq);
                    else
                        disp('FASTA file does not exist');
                    end
                else
                    disp('Reference appended file exists');
                end
            end
        end
    end
end