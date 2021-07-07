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

The MPL-R pipeline can be found in the directory `src`. Example data is present in the directory `data`. The pipeline can be run on the example data by running the file `src/MPL-R.sh`.

### Required software

> [samtools 1.8](https://github.com/samtools/samtools/releases/tag/1.8)  
> [Quasirecomb](https://github.com/cbg-ethz/QuasiRecomb)  
> [BWA](https://github.com/lh3/bwa)  
> [MAFFT](https://mafft.cbrc.jp/alignment/software/)  
> [Python 3](https://www.python.org/downloads/) with [pysam](https://pypi.org/project/pysam/) and [numpy](https://pypi.org/project/numpy/) libraries  
> [MATLAB](https://www.mathworks.com/products/get-matlab.html) with [Bioinformatics toolbox](https://www.mathworks.com/products/bioinfo.html)  
> [VarScan](https://sourceforge.net/projects/varscan/files/VarScan.v2.3.9.jar/download)  

### Operating system
All scripts were written and tested on a Linux based Operating System

## License
This repository is dual licensed as [GPL-3.0](https://github.com/SMUAbdullah/paper-MPL-short-reads/blob/master/LICENSE-GPL) (source code) and [CC0 1.0](https://github.com/SMUAbdullah/paper-MPL-short-reads/blob/master/LICENSE-CC0) (figure and documentation)

## Feedback and troubleshooting

For queries or comments, please email at [umer_973@hotmail.com](mailto:umer_973@hotmail.com)
