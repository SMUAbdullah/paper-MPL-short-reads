import os

rule all:
    input:
        "MPL-R_completed.txt"

rule MPL_R:
    output:
        "MPL-R_completed.txt"
    shell:
        """
        cd src && bash MPL-R.sh
        
        touch ../MPL-R_completed.txt
        """
