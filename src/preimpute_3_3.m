disp('Pre-imputation');

% pathdirw_log=[pathdirw_log0 'preimputation/'];
% if(exist(pathdirw_log, 'dir') == 0)
%     mkdir(pathdirw_log)
% end

renamed_dirs=char(output_dir+'renamed'+'/'+thisset);

for dir_num=1:numdir
    disp(['Bsample:' num2str(dir_num)]);
    thisbsample=char(names(dir_num,:));
    
    pathdirr=[renamed_dirs '/' thisbsample '/'];
    pathdirw_renamed=[pathdirw0 'renamed_imputed/' thisset '/' thisbsample '/'];
    
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
            ref_file_fa=char([datadir 'reads/' thisset '/ref/' thispat '_ref/' thisprot '/' thispat '_' thisprot '_ref.fa']);
            [refHeader,refSequence]=fastaread(ref_file_fa);
            tempseq=(string(refSequence))';
            tempseq=strrep(tempseq,'A','1');
            tempseq=strrep(tempseq,'C','2');
            tempseq=strrep(tempseq,'G','3');
            tempseq=strrep(tempseq,'T','4');
            tempseq=strrep(tempseq,'-','5');
            refsequence=char(tempseq)-'0';
            for tp_num=1:numtpdir
                thistp=tp_names(tp_num,:);
                thistp=thistp((~isspace(thistp)));
                tp_dir=[prot_dir '/' thistp];
                tp_dirw=[prot_dirw '/' thistp];
%                 disp(tp_dirw);
                tp_dirw=tp_dirw((~isspace(tp_dirw)));
                if(exist(tp_dirw, 'dir') == 0)
                    mkdir(tp_dirw)
                end
                if(exist([tp_dir '/' thistp '.fasta'],'file'))
                    [Header,Sequence]=fastaread([tp_dir '/' thistp '.fasta']);
                    tempseq=(string(Sequence))';
                    tempseq=strrep(tempseq,'A','1');
                    tempseq=strrep(tempseq,'C','2');
                    tempseq=strrep(tempseq,'G','3');
                    tempseq=strrep(tempseq,'T','4');
                    tempseq=strrep(tempseq,'-','5');
                    seq=char(tempseq)-'0';
                    
                    [nseq,nsites]=size(seq);
                    splthdr=split(string(Header)','_');
                    [~,nstrns]=size(splthdr);
                    if(nstrns>1)
                        freq=str2double(splthdr(:,2));
                    else
                        freq=str2double(splthdr(2,1));
                    end
                    
                    [~,loci]=size(seq);
                    
                    countvar=zeros(loci,5);
                    
                    Acount=sum(seq==1,1);
                    Ccount=sum(seq==2,1);
                    Gcount=sum(seq==3,1);
                    Tcount=sum(seq==4,1);
                    gapcount=sum(seq==5,1);
                    
                    countvar(:,1)=Acount';
                    countvar(:,2)=Ccount';
                    countvar(:,3)=Gcount';
                    countvar(:,4)=Tcount';
                    countvar(:,5)=gapcount';
                    
                    k=find(countvar(:,5)~=0); % all loci with gaps
                    
                    poly=zeros(1,length(k)); % save polymorphic loci
                    cons=zeros(1,length(k)); % save conserved loci
                    allgaps=zeros(1,length(k)); % save all gaps loci
                    polycount=0;
                    conscount=0;
                    allgapscount=0;
                    
                    for i=1:length(k)
                        currloc=k(i,1);
                        NT=unique(seq(:,currloc))';
                        numNT=length(NT);
                        if(numNT==1) % all gaps
                            allgapscount=allgapscount+1;
                            allgaps(1,allgapscount)=currloc;
                        elseif(numNT==2) % conserved locus with gaps
                            conscount=conscount+1;
                            cons(1,conscount)=currloc;
                        else % polymorphic locus with gaps
                            polycount=polycount+1;
                            poly(1,polycount)=currloc;
                        end
                    end
                    
                    poly=poly(1,1:polycount); % drop the extra zeros used during assignment
                    cons=cons(1,1:conscount); % drop the extra zeros used during assignment
                    allgaps=allgaps(1,1:allgapscount); % drop the extra zeros used during assignment
                    
                    for i=1:length(allgaps) % handle all gaps loci first
                        currloc=allgaps(1,i);
                        seq(:,currloc)=refsequence(1,currloc); % replace the entire locus with the valid NT
                    end
                    
                    for i=1:length(cons) % handle conserved loci second
                        currloc=cons(1,i);
                        NT=unique(seq(:,currloc))';
                        vld_NT=NT(1,1); % pick the smaller index as a gap is denoted by 5 and it is placed at the end because of the auotmatic sorting of the "unique" command
                        seq(:,currloc)=vld_NT; % replace the entire locus with the valid NT
                    end
                    
                    if(~isempty(poly)) % check if there are polymorphic loci requiring imputation
                        thisMSA_QR=zeros(10000,nsites);
                        counts=round(1e4*freq);
                        startpt=1;
                        for freqiter=1:length(counts)
                            endpt=startpt+counts(freqiter,1)-1;
                            thisMSA_QR(startpt:endpt,1:nsites)=repmat(seq(freqiter,:),counts(freqiter,1),1);
                            startpt=endpt+1;
                        end
                        thisMSA_QR=thisMSA_QR(1:endpt,:);
                        
                        seqnew=thisMSA_QR;
                        
                        [totseqMSA,~]=size(thisMSA_QR);
                        
                        pA=sum(thisMSA_QR==1)/totseqMSA; % pseudo probability of A on all positions
                        pC=sum(thisMSA_QR==2)/totseqMSA; % pseudo probability of C on all positions
                        pG=sum(thisMSA_QR==3)/totseqMSA; % pseudo probability of G on all positions
                        pT=sum(thisMSA_QR==4)/totseqMSA; % pseudo probability of T on all positions
                        psum=pA+pC+pG+pT; % total pseudo probability
                        
                        countA=pA*1e4; % convert pseudo probability to counts
                        countC=pC*1e4;
                        countG=pG*1e4;
                        countT=pT*1e4;
                        counttot=psum*1e4; % total count
                        
                        pArs=countA./counttot; % compute actual probability of each nucleotide
                        pCrs=countC./counttot;
                        pGrs=countG./counttot;
                        pTrs=countT./counttot;
                        
                        loci=poly;
                        for lociiter=1:length(loci)
                            thislocus=loci(1,lociiter);
%                             disp([num2str(pArs(1,thislocus)) '    ' num2str(pCrs(1,thislocus)) '    ' num2str(pGrs(1,thislocus)) '    ' num2str(pTrs(1,thislocus))]);
                        end
                        
                        faulty=thisMSA_QR==5; % indicator matrix for faulty positions
                        count_faulty=sum(faulty); % counts of faulty positions
                        faulty_loci=find(count_faulty~=0); % identities of faulty positions
                        num_faulty_loci=sum(count_faulty~=0); % number of faulty positions
                        corrA=round(pArs.*count_faulty); % counts of faulty positions to be assigned A
                        corrC=round(pCrs.*count_faulty); % counts of faulty positions to be assigned C
                        corrG=round(pGrs.*count_faulty); % counts of faulty positions to be assigned G
                        corrT=round(pTrs.*count_faulty); % counts of faulty positions to be assigned T
                        
                        tot_corr_count=corrA+corrC+corrG+corrT; % counts of faulty positions after imputations
                        
                        %                 stem(count_faulty-tot_corr_count); % verifying if there are any rounding errors
%                         disp(['Rounding error: ' num2str(sum(abs(count_faulty-tot_corr_count)))]); % verifying if there are any rounding errors
                        
                        if(sum(abs(count_faulty-tot_corr_count)))
                            problem_loci=find(count_faulty-tot_corr_count);
                            for problem_loci_iter=1:length(problem_loci)
                                problem_locus=problem_loci(1,problem_loci_iter);
                                count_vec=[corrA(1,problem_locus) corrC(1,problem_locus) corrG(1,problem_locus) corrT(1,problem_locus)];
                                maxcount=max(count_vec);
                                if(sum(maxcount==count_vec)>1) % multiple NTs suggested for correction
                                    NT_to_adjust=refsequence(1,problem_locus); % replace gap with the reference
                                else
                                    NT_to_adjust=find(count_vec==maxcount);
                                end
                                
                                switch NT_to_adjust
                                    case 1
                                        corrA(1,problem_locus)=corrA(1,problem_locus)+sum(count_faulty(1,problem_locus)-tot_corr_count(1,problem_locus));
                                    case 2
                                        corrC(1,problem_locus)=corrC(1,problem_locus)+sum(count_faulty(1,problem_locus)-tot_corr_count(1,problem_locus));
                                    case 3
                                        corrG(1,problem_locus)=corrG(1,problem_locus)+sum(count_faulty(1,problem_locus)-tot_corr_count(1,problem_locus));
                                    case 4
                                        corrT(1,problem_locus)=corrT(1,problem_locus)+sum(count_faulty(1,problem_locus)-tot_corr_count(1,problem_locus));
                                end
                                tot_corr_count=corrA+corrC+corrG+corrT; % counts of faulty positions after imputations
%                                 disp(['Rounding error post corr: ' num2str(sum(abs(count_faulty(1,problem_locus)-tot_corr_count(1,problem_locus))))]); % verifying if there are any rounding errors
                            end
                        end
                        
                        correction_mat=zeros(1e4,num_faulty_loci);
                        shuff_corr_mat=zeros(1e4,num_faulty_loci);
                        
                        for locusiter=1:num_faulty_loci
                            curr_locus=faulty_loci(1,locusiter);
                            correction_mat(1:corrA(1,curr_locus),locusiter)=1;
                            correction_mat(corrA(1,curr_locus)+1:corrA(1,curr_locus)+corrC(1,curr_locus),locusiter)=2;
                            correction_mat(corrA(1,curr_locus)+corrC(1,curr_locus)+1:corrA(1,curr_locus)+corrC(1,curr_locus)+corrG(1,curr_locus),locusiter)=3;
                            correction_mat(corrA(1,curr_locus)+corrC(1,curr_locus)+corrG(1,curr_locus)+1:corrA(1,curr_locus)+corrC(1,curr_locus)+corrG(1,curr_locus)+corrT(1,curr_locus),locusiter)=4;
                        end
                        
                        for locusiter=1:num_faulty_loci
                            curr_locus=faulty_loci(1,locusiter);
                            tempvec=correction_mat(1:tot_corr_count(1,curr_locus),locusiter);
                            shuff_corr_mat(1:tot_corr_count(1,curr_locus),locusiter)=tempvec(randperm(tot_corr_count(1,curr_locus)));
                        end
                        
                        for locusiter=1:num_faulty_loci
                            curr_locus=faulty_loci(1,locusiter);
                            tempvec=shuff_corr_mat(1:tot_corr_count(1,curr_locus),locusiter);
                            [faulty_seqs,y]=find(faulty(:,curr_locus));
                            seqnew(faulty_seqs,curr_locus)=tempvec;
                        end
                        [u_seq,~,ic]=unique(seqnew,'rows','stable');  % Unique Values By Row, Retaining Original Order
                        h_seq=(accumarray(ic,1))/totseqMSA;
                        [num_uniq_freq,~]=size(h_seq);
                        
                        headnew=cell(1,num_uniq_freq);
                        
                        for ufiter=1:num_uniq_freq
                            headnew{:,ufiter}=['read' num2str(ufiter-1) '_' num2str(h_seq(ufiter,1))];
                        end
                        
                        Headernew=headnew;
                        clear seq
                        seq=u_seq;
                        clear Header;
                        Header=Headernew;                        
                    end                    
                    strseq=string(char(seq+64));
                    %     % A B C D
                    %     % A C G T
                    strseq=strrep(strseq,'D','T');
                    strseq=strrep(strseq,'C','G');
                    strseq=strrep(strseq,'B','C');
                    strseq=strrep(strseq,'E','-');
                    modifseq=cellstr(strseq');
                    
                    if(exist([tp_dirw '/' thistp '.fasta'],'file'))
                        delete([tp_dirw '/' thistp '.fasta']);
                        fastawrite([tp_dirw '/' thistp '.fasta'],Header,modifseq);
                    else
                        fastawrite([tp_dirw '/' thistp '.fasta'],Header,modifseq);
                    end
                else
                    disp('FASTA file does not exist');
                end
            end
        end
    end
end