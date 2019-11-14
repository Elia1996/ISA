#!/bin/bash

dir=$(pwd)
# tclk minimo 
tmin=2.85
# tclk minimo * 4 
tmax=11.40

# sintesi dell'architettura col clock massimo per torvare l'area 
/home/isa22/script/lib/sepf.sh -f $dir/variables_gen.scr -d $dir/variables.scr -p PERIOD,EXTENSION -n $tmin,_period  
echo "Creation of variables.scr with tclk min"
./synt_save.sh

# sintesi dell'architettura col clock massimo*4 per trovarei area la potenza
/home/isa22/script/lib/sepf.sh -f $dir/variables_gen.scr -d $dir/variables.scr -p PERIOD,EXTENSION -n $tmax,_period_x4  
echo "Creation of variables.scr with tclk min*4"
./synt_save.sh
