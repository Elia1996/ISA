vcom -93 -work ./work ../src/IIR_package_optimized.vhd
vcom -93 -work ./work ../src/*.vhd
vcom -93 -work ./work ../tb/*.vhd
vlog -93 -work ./work ../tb/*.v
vsim -t 1ns -novopt work.IIR_tb
add wave *
add wave /IIR_tb/TB_IN/end_sim_i
add wave sim:/IIR_tb/UUT/filter/reg_ctrl_1/data_in
add wave sim:/IIR_tb/UUT/filter/reg_ctrl_1/data_out
add wave sim:/IIR_tb/UUT/filter/reg_ctrl_2/data_in
add wave sim:/IIR_tb/UUT/filter/reg_ctrl_2/data_out
add wave sim:/IIR_tb/UUT/filter/reg_in/data_out
radix -decimal
run 1000ns
