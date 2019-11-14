#!/bin/bash

dir=$(pwd)
# tclk minimo 
tmin=4
# tclk minimo * 4 
tmax=16
source /software/scripts/init_synopsys_64.18
rm synt_out/report_list_clk.txt

for i in $(seq 2.70 0.05 4 | tr "," "."); do
	./rmwork
	# sintesi dell'architettura col clock massimo per torvare l'area 
	echo "############# SINTESI $i ns ##############################"
	ext=$(echo "_$i" | tr "." "d")
	/home/isa22/script/lib/sepf.sh -f $dir/variables_gen.scr -d $dir/variables.scr -p PERIOD,EXTENSION -n $i,$ext 
	cat variables.scr
	echo "Creation of variables.scr with tclk min"
	dc_shell -f synt.scr >> synt_out/report_list_clk.txt
	echo -e "##########################################################\n\n"
done
