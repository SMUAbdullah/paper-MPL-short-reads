% this file contains the NT-to-NT mutation probability. It must be located
% in the folder .../MPL Pipeline/Data_Misc/MutationProbabilities/
fileNameContainingMutProb = 'MutProb.txt';

FLAG_SaveFile = true; % SET: save output
FLAG_binaryApprox = true; % SET: use binary approximation (only binary approximation wroks currently)
FLAG_AssignSynNonSyn = false;

numNT = 5; % specify the number of NT that 'can' occur in the provided fasta files. Default value is 5 (ACGT-)

FLAG_useFreqEntry = true; % use the freq: entry from header to find frequency
FLAG_Epi = false; % SET: make mutVecs for MPL Epi, unset otherwise
FLAGS_preProc_Steps_2_3_4=[FLAG_binaryApprox,FLAG_SaveFile,FLAG_Epi,FLAG_AssignSynNonSyn];
textCell{1} = ['dirNamesSet' num2str(thisSet) '_' ];
%--------------------------------------------------------------------------


% ------------------------- AUTO INITIALIZATION ---------------------------
% NO USER INPUT REQUIRED
% this file will contain the names of .fasta files to analyze suing the
% AnalysisMPL_shortRead code. This file will be generated autotomatically
% in preprocessingStep1. Here we just need to specify the name.
fileNameFastaFilesWithHU = 'fastaFilesHU.txt';
%fileNameFastaFileToAnalyze = 'fastaFilesToAnalyze.txt'; % right now, these fasta files need to be generated on laptop

FLAG_firstSeqIsRef = true; % set: 1st sequence of every fasta file is reference sequence

mainDir = datadir;
if(ispc)
    chosenSlash = '\';
elseif(isunix)
    chosenSlash = '/';
else
    disp('Error: system is not unix and not PC...')
    pause
end
dirNameTemp123 = 'dirNameFiles';
dirNameStr1Files = [mainDir chosenSlash 'Data_Misc' chosenSlash dirNameTemp123 chosenSlash];

fileNamesListThisDir = findFileNamesWithGivenText(dirNameStr1Files, textCell);
numPat = length(fileNamesListThisDir);
%--------------------------------------------------------------------------
if(numPat == 0)
    disp('NumPat = 0. Check initialization settings and run again.')
end

% ========================== BEGIN PROCESSING =============================

for pat = 1:numPat
    tic;
    fileNameContainingDirPath = [dirNameStr1Files fileNamesListThisDir{pat}];
    indOfDash = strfind(fileNameContainingDirPath, '_');
    indOfDot = strfind(fileNameContainingDirPath, '.');
    patID = fileNameContainingDirPath(indOfDash(end-1)+1:indOfDash(end)-1);
    thisProt = fileNameContainingDirPath(indOfDash(end)+1:indOfDot(end)-1);
    
    disp('-----------------------------------------------------------------')
    disp(' ')
    disp(['Patient: ' patID])
    disp(['Protein: ' thisProt])
    FLAG_Skip = false;
    %     if(strcmp(patID, 'MC1') == false)
    %         FLAG_Skip = true;
    %     end
    if(FLAG_Skip == false)
        % Step1_v2
        % 1. Get timepoint information from filename, order files w.r.t. time
        % 2. Make header compatible with MPL, rewigth frequencies
        % 3. Generate new .txt file conatianing names of header updated
        %    fasta files with ref seq to be used by the alignment function
        
        % input is reconstructed haplotypes (From QuasiRecomb based pipe line of
        % Umer), aligned to reference sequence and manually checked for codon
        % correct aligment. All time point sequences are already aligned to each
        % other
        
        preprocess_Step1_v2(fileNameContainingDirPath, fileNameFastaFilesWithHU, FLAG_SaveFile, FLAG_firstSeqIsRef, FLAG_useFreqEntry);
        
        %  code to find the consensus, freq of mut NTs, ref sequence numbering, syn
        %  an dnon syn mutations, and mutation flux vectors.
        
        preprocess_Step2_3_4(fileNameContainingDirPath, fileNameContainingMutProb, numNT, thisGenomicSegStartInd, thisGenomicSegStopInd, FLAGS_preProc_Steps_2_3_4, datadir)
    else
        disp('....Skipping this patient protein combination...')
    end
end