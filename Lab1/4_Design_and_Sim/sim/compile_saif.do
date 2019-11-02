vcom -93 -work ./work ../src/IIR_package.vhd
vcom -93 -work ./work ../tb/*.vhd
vlog -work ./work ../netlist/IIR_filter.v
vlog -work ./work ../tb/IIR_tb.v
vsim -voptargs=+acc -L /software/dk/nangate45/verilog/msim6.5c work.IIR_tb
vsim -voptargs=+acc -L /software/dk/nangate45/verilog/msim6.5c -sdftype /IIR_tb/UUT=../netlist/IIR_filter.sdf work.IIR_tb
vcd file ../vcd/IIR_filter.vcd
vcd add /IIR_tb/UUT/*
vsim -t 1ns -novopt work.IIR_tb
run 1000ns
quit -f
