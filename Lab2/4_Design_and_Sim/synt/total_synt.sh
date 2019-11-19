#!/bin/bash

source $BASHLIB

dir=$(pwd)
t=$1
ext=$2

# sintesi dell'architettura col clock massimo per torvare l'area 
sepf -f $dir/variables_gen.scr -d $dir/variables.scr -p PERIOD,EXTENSION -n $t,$ext 
echo "Creation of variables.scr with tclk min"
./synt_save.sh

