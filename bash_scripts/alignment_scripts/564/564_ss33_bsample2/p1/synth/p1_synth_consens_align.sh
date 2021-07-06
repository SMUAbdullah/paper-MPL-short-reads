#!/bin/sh

/staff/ee/smuabdullah/Desktop/1_Files/MAFFT/bin/mafft --amino --thread -1 --addfragments "/local1/staff/ee/smuabdullah/Time_Series/06.06_Jun/5-Jun-21/output/consensi_seqs/564/564_ss33_bsample2/p1/synth/consens.fasta" "/local1/staff/ee/smuabdullah/Time_Series/06.06_Jun/5-Jun-21/data/reads/564/ref/p1_ref/synth/p1_synth_ref.fa" > "/local1/staff/ee/smuabdullah/Time_Series/06.06_Jun/5-Jun-21/output/ref_appended_consensi_aligned/564/564_ss33_bsample2/p1/synth/p1_ref_and_consens.fasta"
exit 0