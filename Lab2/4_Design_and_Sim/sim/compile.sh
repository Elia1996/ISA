#!/bin/bash
# per lanciare la simulazione modelsim più in fretta
# $1 è lo script.do di comandi modelsim
source /software/scripts/init_msim6.2g
./rmwork
vsim -do $1
