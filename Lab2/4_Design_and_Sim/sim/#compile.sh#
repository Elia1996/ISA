#!/bin/bash
# per lanciare la simulazione modelsim più in fretta
# $1 è lo script.do di comandi modelsim

if [[ $# -ne 1 ]]; then
	echo "Usage: ./compile.sh \"compile_something.do\""
	exit -1
fi

source /software/scripts/init_msim6.2g

#./rmwork.sh execute this script or launch the following commands as well
rm -rf work
vlib work

vsim -c -do $1
