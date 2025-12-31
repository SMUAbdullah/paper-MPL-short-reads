import os
import sys

data_dir=sys.argv[1]
output_dir=sys.argv[2]
logs_dir=sys.argv[3]
this_set=sys.argv[4]
patient=sys.argv[5]
protein=sys.argv[6]
bsample_size=int(sys.argv[7])
pc=int(sys.argv[8])
curr_bsample=int(sys.argv[9])
paired_end=sys.argv[10]
recombination=sys.argv[11]
K=2 # number of generator sequences for Quasirecomb

mainoutdir_main=output_dir+'reconstruction_scripts'
if(not os.path.isdir(mainoutdir_main)):    
    os.mkdir(mainoutdir_main)
mainoutdir0=mainoutdir_main+'/'+this_set+'/'
if(not os.path.isdir(mainoutdir0)):
    os.mkdir(mainoutdir0)
mainoutdir1=mainoutdir0+this_set+'_ss'+str(pc)+'_bsample'+str(curr_bsample)
if(not os.path.isdir(mainoutdir1)):    
    os.mkdir(mainoutdir1)                  
mainoutdir2=mainoutdir1+'/'+patient+'/'
if(not os.path.isdir(mainoutdir2)):    
    os.mkdir(mainoutdir2)
mainoutdir=mainoutdir2+protein+'/'
if(not os.path.isdir(mainoutdir)):
    os.mkdir(mainoutdir)

logsoutdir0=logs_dir+this_set+'/'
if(not os.path.isdir(logsoutdir0)):    
    os.mkdir(logsoutdir0)
logsoutdir1=logsoutdir0+this_set+'_ss'+str(pc)+'_bsample'+str(curr_bsample)
if(not os.path.isdir(logsoutdir1)):    
    os.mkdir(logsoutdir1)
logsoutdir2=logsoutdir1+'/'+patient+'/'
if(not os.path.isdir(logsoutdir2)):    
    os.mkdir(logsoutdir2)              
logsoutdir=logsoutdir2+protein+'/'
if(not os.path.isdir(logsoutdir)):    
    os.mkdir(logsoutdir)              

mainoutdir_call0=output_dir+'reconstruction_call'+'/'
if(not os.path.isdir(mainoutdir_call0)):    
    os.mkdir(mainoutdir_call0)
mainoutdir_call=mainoutdir_call0+this_set
if(not os.path.isdir(mainoutdir_call)):    
    os.mkdir(mainoutdir_call)

if(paired_end=="true"):
    pe=''
else:
    pe=' -unpaired'

if(recombination=="true"):
    rc=''
else:
    rc=' -noRecomb'
    
maindir=data_dir+'bsamples'+'/'+this_set+'/'+this_set+'_ss'+str(pc)+'_bsample'+str(curr_bsample)+'/'+patient+'/'+protein
mainfile_name=mainoutdir_call+'/'+this_set+'_ss'+str(pc)+'_bsample'+str(curr_bsample)+'_'+patient+'_'+protein+'_'+'reconstruction_call.sh'
filemain = open(os.path.join(mainfile_name),'w',newline='\n')
filemain.write('#!/bin/sh')
filemain.write('\n\n')
filemain.write('chmod -R 700 '+mainoutdir)
filemain.write('\n\n')
fname_count=0
for dirname in os.listdir(maindir):
    # start_time=time.time()
    # print(dirname)
    
    # use the name of input BAM file
    source_dir=maindir+'/'+dirname+'/'
    source_file=source_dir+dirname+'_sorted.bam'
    dest_file=mainoutdir+str(fname_count+1)+'.sh'    
    dest_file_log=logsoutdir+dirname
    # print(dest_file_log)
    fileID = open(os.path.join(dest_file),'w',newline='\n')
    fileID.write('#!/bin/sh')
    fileID.write('\n\n')   
    fileID.write('cd "'+source_dir+'"');
    fileID.write('\n')
    fileID.write('TIMEFORMAT='+''+'%3R'+'')
    fileID.write('\n')
    fileID.write('{ time quasirecomb -i "'+source_file+'"'+rc+pe+' -K '+str(K)+' 2>1 ; } 2>> "'+dest_file_log+'_recons_time.txt"')
    fileID.write('\n')
    fileID.write('rm -rf 1')
    fileID.write('\n')
    fileID.write('exit 0')
    fileID.close()
    filemain.write(os.path.join(dest_file)+' ')
    filemain.write('\n')
    fname_count=fname_count+1
filemain.write('\n')
filemain.write('wait')
filemain.write('\n\n')
filemain.write('exit 0')
filemain.close()
