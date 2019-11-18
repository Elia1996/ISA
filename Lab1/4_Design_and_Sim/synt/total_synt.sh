#!/bin/bash

dir=$(pwd)
# tclk minimo 
tclk=$1
ext=$2

# sintesi dell'architettura col clock massimo per torvare l'area 
/home/isa22/script/lib/sepf.sh -f $dir/variables_gen.scr -d $dir/variables.scr -p PERIOD,EXTENSION -n $tclk,$ext
echo "Creation of variables.scr with tclk=$tclk"
./synt_save.sh

