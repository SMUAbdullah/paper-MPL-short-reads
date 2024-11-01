
% prepares  dirNames_X_Y.txt files needed in PreProcessingStep1

% usage: data folder should have the following structure
%        Data dir:  /.../dir1/[Patient_ID]/[Protein_name]/[FileNames].fasta
%        Analysis Dir should be different from data directiry

% addpath(genpath('/local1/staff/ee/smuabdullah/Time_Series/04.01_Jan/23-Jan-19'));

%-------------------- USER CONTROLLED INITIALIZATION ----------------------
FLAG_SaveFile = 1;

% These variables need to be set for given dataset

dataDirNameMain = [pathdirw0 'final_folder/' thisSet '/' thisSet '_M' num2str(num_bsample) '/'];
analysisDirNameMain = [pathdirw0 'Sim_Analysis/' thisSet '/' thisSet '_M' num2str(num_bsample) '/'];

if(exist(analysisDirNameMain, 'dir') == 0)
    mkdir(analysisDirNameMain)
end

str1 = ['dirNamesSet' thisSet '_ss' num2str(factor) '_M' num2str(num_bsample) '_'];
%--------------------------------------------------------------------------

% ------------------------- AUTO INITIALIZATION ---------------------------
% NO USER INPUT REQUIRED
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
if(exist(dirNameStr1Files, 'dir') == 0)
    mkdir(dirNameStr1Files)
end

dirNamePatList = getFolderContent(dataDirNameMain, 'dir');

numPat = length(dirNamePatList);
if(numPat == 0)
    disp('NumPat = 0. Check initialization settings and run again.')
end

for pat = 1:numPat
    disp(['Patient: ' dirNamePatList{pat}])
    dirNameDataThisPat = [dataDirNameMain dirNamePatList{pat} chosenSlash thisProt chosenSlash];
    dirNameAnalysisThisPat = [analysisDirNameMain dirNamePatList{pat} chosenSlash thisProt chosenSlash];
    
    if(exist(dirNameAnalysisThisPat, 'dir') == 0)
        mkdir(dirNameAnalysisThisPat)
    end
    fileNameContainingDirPath = [str1 dirNamePatList{pat} '_' thisProt '.txt'];
    
    if(FLAG_SaveFile == 1)
        fprintf('Saving .txt file containing names of data and analysis folders...')
        
        if(exist([dirNameStr1Files fileNameContainingDirPath], 'file') == 2)
            delete([dirNameStr1Files fileNameContainingDirPath])
        end
        fileID = fopen([dirNameStr1Files fileNameContainingDirPath],'w');
        for f = 1:2
            if(f == 1)
                fprintf(fileID,'%s\n', '% This file specifies directory paths to Data, Analysis');
                fprintf(fileID,'%s\n', '% the syntax is /dir1/dir2/dir3/ ');
                fprintf(fileID,'%s\n', '% for windows based system, the code will automatically reformat the path');
                fprintf(fileID,'%s\n', '%');
                fprintf(fileID,'%s\n', '% -------------------------------------------------------------------------');
            end
            if(f == 1)
                fprintf(fileID,'%s\n',['dirNameData=' dirNameDataThisPat]);
            elseif(f == 2)
                fprintf(fileID,'%s\n',['dirAnalysisName=' dirNameAnalysisThisPat]);
            end
        end
        fclose(fileID);
        disp('done.')
    elseif(FLAG_SaveFile == 0)
        disp('Warning: .txt data file not saved as FLAG_SaveFile flag not set.')
    else
        disp('Error: case undefined')
        pause
    end
end
