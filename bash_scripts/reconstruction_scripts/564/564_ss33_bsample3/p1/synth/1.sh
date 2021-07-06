#!/bin/sh

cd "/local1/staff/ee/smuabdullah/Time_Series/06.06_Jun/5-Jun-21/output/bsamples/564/564_ss33_bsample3/p1/synth/p1_synth_t101/"
TIMEFORMAT=%3R
{ time java -jar /staff/ee/smuabdullah/Desktop/1_Files/QuasiRecomb/QuasiRecomb.jar -i "/local1/staff/ee/smuabdullah/Time_Series/06.06_Jun/5-Jun-21/output/bsamples/564/564_ss33_bsample3/p1/synth/p1_synth_t101/p1_synth_t101_sorted.bam" -noRecomb -unpaired -K 2 2>1 ; } 2>> "/local1/staff/ee/smuabdullah/Time_Series/06.06_Jun/5-Jun-21/logs/564/564_ss33_bsample3/p1/synth/p1_synth_t101_recons_time.txt"
rm -rf 1
exit 0