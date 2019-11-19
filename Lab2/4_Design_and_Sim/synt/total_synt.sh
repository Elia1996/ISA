#!/bin/bash

dir=$(pwd)
t=$1
ext=$2

# sintesi dell'architettura col clock massimo per torvare l'area 
/home/isa22/script/lib/sepf.sh -f $dir/variables_gen.scr -d $dir/variables.scr -p PERIOD,EXTENSION -n $t,$ext 
echo "Creation of variables.scr with tclk min"
./synt_save.sh

