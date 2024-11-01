# Code written on 01-Oct-2020. This code takes SNP files generated
# by VarScan and outputs the one-point frequency of each nucleotide 
# on each locus

import numpy as np
# import time
import os
import sys
import itertools

data_dir=sys.argv[1]
output_dir=sys.argv[2]
this_set=sys.argv[3]
patient=sys.argv[4]
protein=sys.argv[5]

dict = {'A':0,'C':1,'G':2,'T':3,'X':4}      #dictionary to map nucleotides to indices for storage

BAM_dir=output_dir+'BAM/'+this_set+'/'
pat_dir=BAM_dir+patient+'/'+protein+'/'
WT_dir=data_dir+'reads/'+this_set+'/WT/'+patient+'_WT/'+protein+'/'

WT_file=WT_dir+patient+'_'+protein+'_'+'WT.fa'
dirnames=os.listdir(pat_dir)
tp=[str(j) for j in np.sort([int(i.split('_')[-1].split('t')[1]) for i in dirnames],axis=-1)]

with open(WT_file) as f:
    for line in itertools.islice(f, 1, None, 1):            
        ref=line.strip()                        #read line and remove newline character
        parts=ref.split()
        # print(parts)
f.close()
wt_str=list(parts[0])
wt=[dict[i] for i in wt_str]
tot_loci=len(wt_str)

outdir0=output_dir+'mut_aft/'
if(not os.path.isdir(outdir0)):
    os.mkdir(outdir0)
outdir1=outdir0+this_set+'/'
if(not os.path.isdir(outdir1)):
    os.mkdir(outdir1)
outdir2=outdir1+patient+'/'
if(not os.path.isdir(outdir2)):
    os.mkdir(outdir2)
outdir3=outdir2+protein+'/'
if(not os.path.isdir(outdir3)):
    os.mkdir(outdir3)
outdir4=outdir3+'NT_freqs/'
if(not os.path.isdir(outdir4)):
    os.mkdir(outdir4)

for dirname in dirnames:    
    foutfile1=open(outdir4+dirname+'_freq.txt','w')       #file for storing frequencies
    foutfile1.write('locus\t\t   WT\t\t   Mut')
    foutfile1.write('\n')
    
    source_file = pat_dir+dirname+'/'+dirname+'_SNP.txt'
    
    NTcounts=np.zeros((tot_loci,5),dtype=int)          #storing nucleotide counts
    with open(source_file) as f:
        for line in itertools.islice(f, 1, None, 1):
            ref=line.strip()                        #read line and remove newline character
            parts=ref.split()                       #split into individual strings                
            locus=int(parts[1])                     #pick locus
            ref_NT=parts[2]                         #pick most common nucleotide
            vld_depth=int(parts[4])                 #pick depth reported by reads with mapping quality >20 (99% accuracy)
            splt_str=parts[5].split(':')            #split based on the delimiter ':'            
            if(ref_NT!=splt_str[0]):                #check if the reference nucleotide in the string doesn't match in the third column
                print('Reference nucleotide doesn\'''t match')                
            num_NT=len(parts)-5                     #number of NTs on the current locus
            if(num_NT==1):
                splt_str=parts[5].split(':')        #split based on the delimiter ':'
                NT=splt_str[0]                      #pick the nucleotide
                NTcounts[locus-1,dict[NT]]=int(splt_str[1]) #pick the nucleotide counts
            else:            
                for i in range(0,num_NT):
                    splt_str=parts[i+5].split(':')  #split based on the delimiter ':'
                    NT=splt_str[0]                  #pick the nucleotide
                    if((NT!='A')and(NT!='C')and(NT!='G')and(NT!='T')and(NT!='X')): # check for indels
                        nt_temp=NT.split('-')       #split into type of indel
                        indel_type=nt_temp[0]       #classify insertion/deletion
                        num_indels=int(splt_str[1]) #count of indels
                        NT=nt_temp[2]               #nucleotide
                        if(indel_type=='DEL'):      #check for deletion
                            NT='X'                  #place gap
                        NT_test=dict.get(NT)        #check for non existent NT combination
                        if (not NT_test):           #if non existent NT combination occurs (like a codon)
                            NT_list=list(NT)        #pick the first NT
                            NT=NT_list[0]           
                        NTcounts[locus-1,dict[NT]] += int(num_indels) #pick the nucleotide counts  
                        continue
                    NTcounts[locus-1,dict[NT]] += int(splt_str[1]) #pick the nucleotide counts
            
        for locus_iter in range(0,tot_loci):
            tot_counts=np.sum(NTcounts[locus_iter,])
            if(tot_counts==0):
                wt_freq=0
                mut_freq=0
            else:
                curr_wt=wt[locus_iter]
                wt_freq=np.divide(NTcounts[locus_iter,curr_wt],tot_counts)
                mut_freq=np.divide(np.sum(NTcounts[locus_iter,])-NTcounts[locus_iter,curr_wt],tot_counts)
            foutfile1.write(str(locus_iter+1).rjust(4)+'\t')
            foutfile1.write("{:.9f}".format(wt_freq).rjust(4)+'\t')
            foutfile1.write("{:.9f}".format(mut_freq).rjust(4)+'\t')
            foutfile1.write('\n')                    
    foutfile1.close()
    f.close()

outdir4=outdir3+'NT_freqs/'
if(not os.path.isdir(outdir4)):
    os.mkdir(outdir4)
        
outdirfreq=outdir3+'freqs_trajs/'
if(not os.path.isdir(outdirfreq)):
    os.mkdir(outdirfreq)

foutfile1=open(outdirfreq+'/1pts_set'+this_set+'_'+patient+'.txt','w') #file for storing frequencies
for curr_tp in tp:
    infile=outdir4+patient+'_'+protein+'_t'+curr_tp+'_freq.txt' #file with stored frequencies
    linecount=0
    with open(infile) as f:
        for line in itertools.islice(f, 1, None, 1):
            ref=line.strip()                        #read line and remove newline character
            parts=ref.split()                       #split into individual strings                
            freq=parts[2]
            if(linecount==0):
                foutfile1.write(freq)
            else:
                foutfile1.write(','+freq)
            linecount += 1
        foutfile1.write('\n')
    f.close()
foutfile1.close()
