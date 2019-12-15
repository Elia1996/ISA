vcom -93 -work ./work ../src/common/*.vhd

vcom -93 -work ./work ../src/multiplier/MBE_pp.vhd
vcom -93 -work ./work ../src/multiplier/MBE_pp_MAT.vhd
vcom -93 -work ./work ../src/multiplier/MBE_dadda.vhd
vcom -93 -work ./work ../src/multiplier/MBE_multiplier.vhd
vcom -93 -work ./work ../src/multiplier/fpmul_stage1.vhd
vcom -93 -work ./work ../src/multiplier/fpmul_stage2.vhd
vcom -93 -work ./work ../src/multiplier/fpmul_stage3.vhd
vcom -93 -work ./work ../src/multiplier/fpmul_stage4.vhd
#vcom -93 -work ./work ../src/multiplier/fpmul_single_cycle.vhd
vcom -93 -work ./work ../src/multiplier/fpmul_pipeline.vhd

vcom -93 -work ./work ../tb/*.vhd
vlog -93 -work ./work ../netlist/fpmul_pipeline.v
vlog -93 -work ./work ../tb/*.v

vsim -L /software/dk/nangate45/verilog/msim6.2g work.mul_pipe_tb
vsim -L /software/dk/nangate45/verilog/msim6.2g -sdftype /mul_pipe_tb/UUT=../netlist/fpmul_pipeline.sdf work.mul_pipe_tb
vcd file ../vcd/fpmul_pipeline.vcd
vcd add /mul_pipe_tb/UUT/*
add wave *
run -all
quit


