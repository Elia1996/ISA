#!/bin/bash
echo "--------------- sim_saif  starts ------------------------------------"
echo "-Elimination and re-creation of work dir"
rm -r work
echo "-Setting of 6.2g version of modelsim"
source /software/scripts/init_msim6.2g > /dev/null
vlib work
echo "-Execution of modelsim, output log in saif/log directory"
vsim -c -do compile_saif.do > ../saif/log/vsim_log.txt
cat ../saif/log/vsim_log.txt | grep -i error
cat ../saif/log/vsim_log.txt | grep -i warning
echo "-Elimination of wlf file"
rm wlf*
echo -e "--------------- end\n\n"
# converto in saif
source /software/scripts/init_synopsys_64.18
vcd2saif -input ../vcd/IIR_filter.vcd -output ../saif/IIR_filter.saif
