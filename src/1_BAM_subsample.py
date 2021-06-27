# Code written on 30-Jul-2020. This code takes sorted BAM files
# and splits those into X BAM files by randomly selecting reads 
# with replacement

# Input files are stored in the variable bam_f
# Output files are stored in the variables output1_f, output2_f and output3_f

# function call
# python reads_subsample_deterministic_BAM.py
# <Directory with samtools>
# <Output directory>
# <Set> 
# <Experiment>
# <Number of reads in each subset>
# <Percentage of reads in each subset>
# <Current ensemble>

import numpy as np
import pysam
# import time
import os
import sys
import subprocess

codefile=sys.argv[1]
data_dir=sys.argv[2]
output_dir=sys.argv[3]
this_set=sys.argv[4]
experiment=sys.argv[5]
ens_size=int(sys.argv[6])
pc=int(sys.argv[7])
curr_ens=int(sys.argv[8])

mainoutdir0=output_dir+this_set+'_ss'+str(pc)+'_en'+str(curr_ens)
if(not os.path.isdir(mainoutdir0)):    #check if output directory exists
    os.mkdir(mainoutdir0)              #create output directory
mainoutdir=mainoutdir0+'/'+experiment+'/'
if(not os.path.isdir(mainoutdir)):    #check if output directory exists
    os.mkdir(mainoutdir)              #create output directory
    
maindir=output_dir+this_set+'_BAM/'+experiment
fname_count=0
for dirname in os.listdir(maindir):
    # start_time=time.time()
    MSAoutdir=mainoutdir+dirname
    if(not os.path.isdir(MSAoutdir)):    #check if output directory exists
        os.mkdir(MSAoutdir)              #create output directory
    
    # open input BAM file for reading
    source_file=maindir+'/'+dirname+'/'+dirname+'_sorted.bam'
    dest_file=MSAoutdir+'/'+dirname+'.bam'
    
    bam_f = pysam.AlignmentFile(source_file, "rb")
    # open output BAM files for writing
    output_f = pysam.AlignmentFile(dest_file, "wb", template=bam_f)
    bam_iter = bam_f.fetch(until_eof=True)
    
    command=codefile+' view -c -F 4 '+source_file
    process = subprocess.Popen(command.split(), stdout=subprocess.PIPE)
    output, error = process.communicate()
    numreads=float(output)
    
    ind_vec=np.random.choice(int(numreads),ens_size)
    unique, counts = np.unique(ind_vec, return_counts=True)
    used_ind=dict(zip(unique, counts))        
    # for each read in BAM file
    rdcount=0
    subsamp_size=0
    for read in bam_iter:
        #add into a file depending on the index
        if rdcount in used_ind:
            num_repeat=used_ind[rdcount]
            for read_iter in range(0,num_repeat):
                output_f.write(read)
                subsamp_size += 1
        rdcount += 1
    bam_f.close()        
    output_f.close()            
    outfile1=MSAoutdir+'/'+dirname+'_sorted.bam'
    command1=codefile+" sort "+dest_file+" -o "+outfile1
    stream1 = os.popen(command1)
    output1 = stream1.read()
    command2=codefile+" index "+outfile1
    stream2 = os.popen(command2)
    output2 = stream2.read()
    outfile3=MSAoutdir+"/"+dirname+"_depth.txt"
    command3=codefile+" depth "+outfile1+" > "+outfile3
    stream3 = os.popen(command3)
    output3 = stream3.read()
    os.remove(dest_file)
#     print("Total reads processed:", numreads)
#     print("Reads in subsampled file:", subsamp_size)
# print("--- %s seconds ---" % (time.time() - start_time))
