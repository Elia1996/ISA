#!/bin/bash
source $BASHLIB

t=$1
t_ext="_$(echo $t | tr "." "d")"
echo $t_ext

# esecuzione della sintesi
./total_synt.sh $t $t_ext
echo "- This file are generated by synopsys:
        synt/synt_out/compilexx.txt
        synt/synt_out/report_timingxx.txt
        synt/synt_out/report_area.txt
        netlist/top_entity.sdf
        netlist/top_entity.sdc
        netlist/top_enetity.v

"

