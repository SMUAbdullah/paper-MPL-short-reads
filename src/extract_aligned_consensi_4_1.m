disp('Extraction of aligned consensi');

% pathdirw_log=[pathdirw_log0 'extracting_aligned_consensi/'];
% if(exist(pathdirw_log, 'dir') == 0)
%     mkdir(pathdirw_log)
% end

raac_dirs=char(output_dir+'ref_appended_consensi_aligned'+'/'+thisset);

for dir_num=1:numdir
    disp(['Bsample:' num2str(dir_num)]);
    thisbsample=char(names(dir_num,:));
    
    pathdirr=[raac_dirs '/' thisbsample '/'];
    pathdirw_consensi=[pathdirw0 'aligned_consensi/' thisset '/' thisbsample '/'];
    
    pat_dir_contents=dir(pathdirr);
    temp_pat_names={pat_dir_contents.name};
    pat_names=char(temp_pat_names(1,3:end));
    [numpatdir,~]=size(pat_names);
    for pat_num=1:numpatdir
        thispat=pat_names(pat_num,:);
        pat_dir=[pathdirr thispat];
        pat_dirw=[pathdirw_consensi thispat];
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
            infile=[prot_dir '/' thispat '_ref_and_consens.fasta'];
            [refheader,refsequence]=fastaread(infile);
            tempseq=(string(refsequence))';
            ref=tempseq(1,:);
            seq=tempseq(2:end,:);
            headconsensus=string(refheader(1,1));
            refheader=string(refheader(1,2:end));
            num_tp=length(refheader);
            for curr_tp=1:num_tp
                Sequence=cellstr(seq(curr_tp,:));
                Header=cellstr(refheader(1,curr_tp));
                if(exist([prot_dirw '/' char(refheader(1,curr_tp)) '_consensus' '.fasta'],'file'))
                    delete([prot_dirw '/' char(refheader(1,curr_tp)) '_consensus' '.fasta']);
                    fastawrite([prot_dirw '/' char(refheader(1,curr_tp)) '_consensus' '.fasta'],Header,Sequence);
                else
                    fastawrite([prot_dirw '/' char(refheader(1,curr_tp)) '_consensus' '.fasta'],Header,Sequence);
                end
            end
        end
    end
end