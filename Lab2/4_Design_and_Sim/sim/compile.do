vcom -93 -work ./work ../src/common/*.vhd

vcom -93 -work ./work ../src/multiplier/fpmul_stage1.vhd
vcom -93 -work ./work ../src/multiplier/fpmul_stage2.vhd
vcom -93 -work ./work ../src/multiplier/fpmul_stage3.vhd
vcom -93 -work ./work ../src/multiplier/fpmul_stage4.vhd
#vcom -93 -work ./work ../src/multiplier/fpmul_single_cycle.vhd
vcom -93 -work ./work ../src/multiplier/fpmul_pipeline.vhd

vcom -93 -work ./work ../tb/*.vhd
vlog -93 -work ./work ../tb/*.v
vsim -t 1ns -novopt work.mul_pipe_tb
add wave *
radix -hexadecimal
run 1000


