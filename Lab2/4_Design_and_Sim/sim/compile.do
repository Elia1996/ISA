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
vlog -93 -work ./work ../tb/*.v
vsim -t 1ns -novopt work.mul_pipe_tb
add wave -radix hexadecimal *
add wave -radix binary sim:/mul_pipe_tb/TB_IN/start_read 
add wave -radix binary sim:/mul_pipe_tb/TB_IN/start_read_correct
add wave sim:/mul_pipe_tb/UUT/s_fp_a 
add wave sim:/mul_pipe_tb/UUT/s_fp_b 
add wave sim:/mul_pipe_tb/UUT/fp_a 
add wave sim:/mul_pipe_tb/UUT/fp_b 
add wave sim:/mul_pipe_tb/UUT/i2/mult/pp_matrix
run -all

quit
