#!/bin/bash

source $BASHLIB

dir=$(pwd)
t=$1
ext=$2
arch=$3

# sintesi dell'architettura col clock massimo per torvare l'area 
sepf -f $dir/variables_gen.scr -d $dir/variables.scr -p PERIOD,EXTENSION,ARCH -n $t,$ext,$arch 
if [[ $arch = "noarch" ]]; then
	cat $dir/synt_gen.scr | sed 's/COMMENT/#/g'  > $dir/synt.scr
else
	cat $dir/synt_gen.scr | sed 's/COMMENT//g'  > $dir/synt.scr
fi
echo "Creation of variables.scr with tclk min"
./synt_save.sh

