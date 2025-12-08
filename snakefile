import os

configfile: "config.yaml"

rule all:
    input:
        "MPL-R_completed.txt"

rule MPL_R:
    output:
        "MPL-R_completed.txt"
    shell:
        """
        export PATH={config[software_paths][bwa_dir]}:$PATH
        export PATH={config[software_paths][samtools_dir]}:$PATH
        export PATH={config[software_paths][anaconda_dir]}:$PATH
        export PATH={config[software_paths][matlab_dir]}:$PATH        
        export PATH={config[software_paths][mafft_dir]}:$PATH
        # Run from src directory, but output goes to parent
        cd src && bash MPL-R.sh
        
        # Create completion marker in the original directory
        touch ../MPL-R_completed.txt
        """
