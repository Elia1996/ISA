vcom -93 -work ./work ../tb/*.vhd
vlog -work ./work ../netlist/iir_filter.v
vlog -work ./work ../netlist/IIR_tb.v
vsim -L /software/dk/nangate45/verilog/msim6.2g work.iir_tb
vsim -L /software/dk/nangate45/verilog/msim6.2g -sdftyp /iir_tb/UUT=../netlist/iir_filter.sdf work.iir_tb
vcd file ../vcd/iir_filter.vcd
vcd add /iir_tb/UUT/*
vsim -t 1ns -novopt work.IIR_tb
run 1000ns
