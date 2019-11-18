vcom -93 -work ./work ../src/IIR_package_optimized.vhd
vcom -93 -work ./work ../src/*.vhd
vcom -93 -work ./work ../tb/*.vhd
vlog -93 -work ./work ../tb/*.v
vsim -t 1ns -novopt work.IIR_tb
add wave *
add wave /IIR_tb/TB_IN/end_sim_i
radix -decimal
run -all
