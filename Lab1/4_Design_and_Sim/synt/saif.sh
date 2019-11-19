#!/bin/bash

source $BASHLIB



t=$1
t_ext="_$(echo $t | tr "." "d")"
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
# modifico il clock della simulazione nel testbench
cd ../tb
sepf -f clk_gen.scr -d clk_gen.vhd -p PERIOD -n $t
# esecution of netlist
cd ../sim
./sim_saif.sh
echo "- This file are generated by modelsim
		vcd/top_entity.vcd
		saif/top_entity.saif
		
"

# potenza finale
cd ../synt
source /software/scripts/init_synopsys_64.18
dc_shell -f final_power.scr >> ./synt_out/dc_shell_output.txt
echo "- This file are generated by synopsys
		synt_out/report_power_final.txt

"

