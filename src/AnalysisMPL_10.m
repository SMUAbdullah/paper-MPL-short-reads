%========================== INITIALIZATION ================================

WT_dir=[datadir 'reads/' thisSet '/WT/'];
pathdir_est=[pathdirw0 's_estimates/'];
if(exist(pathdir_est, 'dir') == 0)
    mkdir(pathdir_est)
end

% choose convention 1: Ito, 2: Stratonovich, 3: Linear interpolation
% Stratonovich has increased robustness to sampling effects than Ito
% Linear interpolation has most increased robustness to sampling effects
setConvention = 3;

% this file contains the NT-to-NT mutation probability. It must be located
% in the folder .../MPL Pipeline/Data_Misc/MutationProbabilities/
fileNameContainingMutProb = 'MutProb.txt';
recombProb = 0;%1e-4; % recombination probability

FLAG_UserProvidedRefSeq = true; % SET: user provides reference sequence in ACGT- form
% refernceSequence = repmat('A',1,Lin);
FLAG_binaryApprox = true; % SET: use binary approximation (only binary approximation wroks currently)
numNT = 5; % specify the number of NT that 'can' occur in the provided fasta files. Default value is 5 (ACGT-)

FLAG_MarkAccessibility = false; % KEEP this FALSE for the time being, Accessibility code needs to be checked

FLAG_SaveIntCovMtx = false; % SET: will save Integrated Covariance matrix (for debugging only)
FLAG_useFreqEntry = true;
FLAG_troubleShoot = false; % SET: saves SelEstNoMu and SelEstSLNoMu
FLAG_Epi = false; % SET: use MPL with epistasis, UNSET: MPL with epistasis not used

textCell{1} = ['dirNamesSet' num2str(thisSet) '_'];
%--------------------------------------------------------------------------

% ------------------------- AUTO INITIALIZATION ---------------------------
% NO USER INPUT REQUIRED
if(setConvention == 1)
    FLAG_stratonovich = false;%true;%true; % SET: stratonovich convention, UNSET: Ito convention
    FLAG_linearInt = false;
elseif(setConvention == 2)
    FLAG_stratonovich = true;%true;%true; % SET: stratonovich convention, UNSET: Ito convention
    FLAG_linearInt = false;
elseif(setConvention == 3)
    FLAG_stratonovich = false;%true;%true; % SET: stratonovich convention, UNSET: Ito convention
    FLAG_linearInt = true;
end

% this file will contain the names of .fasta files to analyze suing the
% AnalysisMPL_shortRead code. This file will be generated autotomatically
% in preprocessingStep1. Here we just need to specify the name.
fileNameFastaFilesWithHU = 'fastaFilesHU.txt';
meFastaFileToAnalyze = 'fastaFilesToAnalyze.txt'; % right now, these fasta files need to be generated on laptop

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
    fileNameContainingDirPath = [dirNameStr1Files fileNamesListThisDir{pat}];
    indOfDash = strfind(fileNameContainingDirPath, '_');
    indOfDot = strfind(fileNameContainingDirPath, '.');
    patID = fileNameContainingDirPath(indOfDash(end-1)+1:indOfDash(end)-1);
    thisProt = fileNameContainingDirPath(indOfDash(end)+1:indOfDot(end)-1);
    
    WT_file=[WT_dir patID '_WT' '/' thisProt '/' patID '_' thisProt '_WT.fa'];
    [refheader,refernceSequence]=fastaread(WT_file);
    
    disp('-----------------------------------------------------------------')
    disp(' ')
    disp(['Patient: ' patID])
    disp(['Protein: ' thisProt])
    FLAG_Skip = false;
    %     if(strcmp(patID, 'MC1') == false)
    %         FLAG_Skip = true;
    %     end
    if(FLAG_Skip == false)
        %analysisStep1_v2(fileNameContainingDirPath, priorConstSC, FLAG_stratonovich, FLAG_MarkAccessibility, FLAG_UserProvidedRefSeq, FLAG_SaveIntCovMtx, FLAG_useFreqEntry, FLAG_troubleShoot, FLAG_linearInt);
        priorConst = reg;
        FLAG_vector = [FLAG_stratonovich;
            FLAG_MarkAccessibility;
            FLAG_UserProvidedRefSeq;
            FLAG_SaveIntCovMtx;
            FLAG_useFreqEntry;
            FLAG_troubleShoot;
            FLAG_linearInt];
        % no need to specify  FLAG_Epi for MPL without epistasis analyss
        analysis_MPL_10_1(fileNameContainingDirPath,pathdirw0,pathdir_est,priorConst,FLAG_vector,refernceSequence,thisSet,patID,thisProt,noisethresh);
    else
        disp('...skipping this patient-protien combination...')
    end
end
