# Overview

This repository contains the MPL-R pipeline and the codes and data for reproducting the results presented in the manuscript

### Linkage-aware inference of fitness from short-read time-series genomic data  
Syed Muhammad Umer Abdullah<sup>1,2†</sup>, Muhammad Saqib Sohail<sup>1†</sup>, Raymond H. Y. Louie<sup>1,3,4,5</sup>, John P. Barton<sup>6‡</sup>, and Matthew R. McKay<sup>1,7\*‡</sup>

<sup>1</sup> Department of Electronic and Computer Engineering, The Hong Kong University of Science and Technology, Hong Kong, China  
<sup>2</sup> State Key Laboratory of Emerging Infectious Diseases, Carol Yu Centre for Infection, Department of Microbiology, Li Ka Shing Faculty of Medicine, The University of Hong Kong, Pokfulam, Hong Kong, China  
<sup>3</sup> Institute for Advanced Study, Hong Kong University of Science and Technology, Hong Kong, China  
<sup>4</sup> The Kirby Institute, University of New South Wales, Sydney, New South Wales, Australia  
<sup>5</sup> School of Medical Sciences, University of New South Wales, Sydney, New South Wales, Australia  
<sup>6</sup> Department of Physics and Astronomy, University of California, Riverside, Riverside, CA, USA  
<sup>7</sup> Department of Chemical and Biological Engineering, The Hong Kong University of Science and Technology, Hong Kong, China  
<sup>*</sup> Corresponding author: E-mail: [m.mckay@ust.hk](mailto:m.mckay@ust.hk)  
† These authors contributed equally to this study and share first authorship.  
‡ Joint senior authors.

## MPL-R pipeline

The MPL-R pipeline can be found in the directory `src`. Example data is present in the directory `data` which needs to be extracted before running the pipeline. The pipeline can be run on the example data by running the file `src/MPL-R.sh`. Output files generated during each step of the pipeline are stored in the directory `output`. The selection coefficient estimates are stored in the directory `output/s_estimates`. Two files, `s_MPL_R_*.txt` and `s_MPL_iden_*.txt`, are generated for the selection coefficient estimates for each patient. `s_MPL_R_*.txt` stores the selection coefficients estimated by considering genetic linkage, and `s_MPL_iden_*.txt` stores the selection coefficients estimated by ignoring genetic linkage.

### Required software

> [samtools 1.8](https://github.com/samtools/samtools/releases/tag/1.8)  
> [Quasirecomb](https://github.com/cbg-ethz/QuasiRecomb)  
> [BWA-0.7.17](https://github.com/lh3/bwa/releases/tag/v0.7.17)  
> [MAFFT](https://mafft.cbrc.jp/alignment/software/)  
> [Python 3](https://www.python.org/downloads/) with [pysam](https://pypi.org/project/pysam/) and [numpy](https://pypi.org/project/numpy/) libraries  
> [MATLAB](https://www.mathworks.com/products/get-matlab.html) with [Bioinformatics toolbox](https://www.mathworks.com/products/bioinfo.html)  
> [VarScan](https://sourceforge.net/projects/varscan/files/VarScan.v2.3.9.jar/download)  

### Operating system
All scripts were written and tested on a Linux based Operating System

### Known issues and troubleshooting
- The naming convention for the input directories is `data/reads/MSA/<patient>/<protein>`, as demonstrated in the naming of the example data. Any deviation from this might lead to errors.
- The naming convention for the input FASTQ files is `<patient>_<protein>_t<time-point>.fq`, as demonstrated in the naming of the example data.  Any deviation from this might lead to errors.
- The script `0_FASTQ_to_BAM.sh` creates a subdirectory `BAM` in the directory `output`. Further subdirectories are created for the dataset, patient, protein, and time-point. The final output are 3 files, `<patient>_<protein>_t<time-point>_sorted.bam`, `<patient>_<protein>_t<time-point>_sorted.bam.bai`, and `<patient>_<protein>_t<time-point>_sorted_depth.txt`, created in the subdirectory for the time-point, i.e. `output/BAM/<dataset>/<patient>/<protein>/<patient>_<protein>_t<time-point>`. If these directories or files are not created or there are incorrect file extensions, this could indicate an issue with running the script. As a first step, please double check that the naming convention is followed exactly as in the directory `data/reads` and all files have the same extensions as the example data. Afterwards, please check that the exact versions of samtools and BWA are used as mentioned in the section `Required software`. If both these checks have been performed and there are issues, feel free to report the issue via email or GitHub.
- The script `AnalysisMPL_10.m` gives the error `'NumPat = 0. Check initialization settings and run again.` when it cannot find the FASTA files of the reconstructed sequences for any patient. This can happen if this script is run before one or more of the previous scripts has finished running or if there is an issue with the location of the files. Before running this script, please ensure that all previous scripts have finished running without errors. Please also avoid manually changing the location or name of any directory after running previous scripts, otherwise this script will return the error mentioned before.

## License
This repository is dual licensed as [GPL-3.0](https://github.com/SMUAbdullah/paper-MPL-short-reads/blob/master/LICENSE-GPL) (source code) and [CC0 1.0](https://github.com/SMUAbdullah/paper-MPL-short-reads/blob/master/LICENSE-CC0) (figure and documentation)

## Feedback and troubleshooting

For queries or comments, please email at [umer_973@hotmail.com](mailto:umer_973@hotmail.com)
