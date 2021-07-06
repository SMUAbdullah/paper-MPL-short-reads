disp('Reconstructed files renaming');

for dir_num=1:numdir
    disp(['Bsample:' num2str(dir_num)]);
    thisbsample=char(names(dir_num,:));
    
    pathdirr=[bsample_dirs '/' thisbsample '/'];
    pathdirw_renamed=[pathdirw0 'renamed/' thisset '/' thisbsample '/'];
    
    pat_dir_contents=dir(pathdirr);
    temp_pat_names={pat_dir_contents.name};
    pat_names=char(temp_pat_names(1,3:end));
    [numpatdir,~]=size(pat_names);
    for pat_num=1:numpatdir
        thispat=pat_names(pat_num,:);
        pat_dir=[pathdirr thispat];
        pat_dirw=[pathdirw_renamed thispat];
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
                tp_dirw=[prot_dirw '/' thistp];
                tp_dirw=tp_dirw((~isspace(tp_dirw)));
                if(exist(tp_dirw, 'dir') == 0)
                    mkdir(tp_dirw)
                end
                status=copyfile([tp_dir '/' 'quasispecies.fasta'],[tp_dirw '/' thistp '.fasta']);
            end
        end
    end    
end