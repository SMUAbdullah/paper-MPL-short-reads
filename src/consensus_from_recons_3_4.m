disp('Consensus sequence generation');

% pathdirw_log=[pathdirw_log0 'consensus_gen/'];
% if(exist(pathdirw_log, 'dir') == 0)
%     mkdir(pathdirw_log)
% end

renamed_imputed_dirs=char(output_dir+'renamed_imputed'+'/'+thisset);

for dir_num=1:numdir
    disp(['Bsample:' num2str(dir_num)]);
    thisbsample=char(names(dir_num,:));
    
    pathdirr=[renamed_imputed_dirs '/' thisbsample '/'];
    pathdirw_consensi=[pathdirw0 'consensi_seqs/' thisset '/' thisbsample '/'];
    
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
            count=1;
            consensusseq=char(ones(max_tp,max_seq_length)*' '); % time points, sequence length, pick arbitrarily large values for both
            consensusheader=strings([max_tp,1]);
            for tp_num=1:numtpdir
                thistp=tp_names(tp_num,:);
                thistp=thistp((~isspace(thistp)));
                tp_dir=[prot_dir '/' thistp];
                
                [Header,Sequence]=fastaread([tp_dir '/' thistp '.fasta']);
                seq=(string(Sequence))';
                [~,nsites]=size(seq);
                
                thisMSA_QR=strings([10000,nsites]); % maximum number of sequences returned by Quasirecomb is 10000
                
                splthdr=split(string(Header)','_');
                [~,nstrns]=size(splthdr);
                if(nstrns>1)
                    freq=str2double(splthdr(:,2));
                else
                    freq=str2double(splthdr(2,1));
                end
                counts=round(1e4*freq);
                counts=counts(counts~=0);
                
                startpt=1;
                for freqiter=1:length(counts)
                    endpt=startpt+counts(freqiter,1)-1;
                    thisMSA_QR(startpt:endpt,1:nsites)=repmat(seq(freqiter,:),counts(freqiter,1),1);
                    startpt=endpt+1;
                end
                
                thisMSA_QR=thisMSA_QR(1:endpt,:);
                CSeq = seqconsensus(char(thisMSA_QR));
                consensusheader(count,:)=thistp;
                consensusseq(count,1:length(CSeq))=CSeq;
                count=count+1;
            end
            Sequence=cellstr(consensusseq(1:count-1,:));
            Header=consensusheader(1:count-1,:);
                        
            if(exist([prot_dirw '/' 'consens.fasta'],'file'))
                delete([prot_dirw '/' 'consens.fasta']);
                fastawrite([prot_dirw '/' 'consens.fasta'],Header,Sequence);
            else
                fastawrite([prot_dirw '/' 'consens.fasta'],Header,Sequence);
            end
        end
    end
end