#!/bin/sh

cd "/local1/staff/ee/smuabdullah/Time_Series/06.06_Jun/5-Jun-21/output/bsamples/564/564_ss33_bsample1/p1/synth/p1_synth_t251/"
TIMEFORMAT=%3R
{ time java -jar /staff/ee/smuabdullah/Desktop/1_Files/QuasiRecomb/QuasiRecomb.jar -i "/local1/staff/ee/smuabdullah/Time_Series/06.06_Jun/5-Jun-21/output/bsamples/564/564_ss33_bsample1/p1/synth/p1_synth_t251/p1_synth_t251_sorted.bam" -noRecomb -unpaired -K 2 2>1 ; } 2>> "/local1/staff/ee/smuabdullah/Time_Series/06.06_Jun/5-Jun-21/logs/564/564_ss33_bsample1/p1/synth/p1_synth_t251_recons_time.txt"
rm -rf 1
exit 0