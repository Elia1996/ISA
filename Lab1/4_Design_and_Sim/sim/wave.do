onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /IIR_tb/CLK_s
add wave -noupdate -format Logic /IIR_tb/RST_n_s
add wave -noupdate -format Literal /IIR_tb/DIN_s
add wave -noupdate -format Logic /IIR_tb/VIN_s
add wave -noupdate -format Literal /IIR_tb/DOUT_s
add wave -noupdate -format Logic /IIR_tb/VOUT_s
add wave -noupdate -format Logic /IIR_tb/END_SIM_s
add wave -noupdate -format Literal /IIR_tb/TB_IN/end_sim_i
add wave -noupdate -format Literal /IIR_tb/UUT/filter/reg_m_1
add wave -noupdate -format Literal /IIR_tb/UUT/filter/reg_m_2
add wave -noupdate -format Literal /IIR_tb/UUT/filter/s_1
add wave -noupdate -format Literal /IIR_tb/UUT/filter/reg_m_3
add wave -noupdate -format Literal /IIR_tb/UUT/filter/s_2
add wave -noupdate -format Literal /IIR_tb/UUT/filter/reg_m_4
add wave -noupdate -format Literal /IIR_tb/UUT/filter/s_3
add wave -noupdate -format Literal /IIR_tb/UUT/filter/reg_m_5
add wave -noupdate -format Literal /IIR_tb/UUT/filter/s_4
add wave -noupdate -format Literal /IIR_tb/UUT/filter/reg_s_4
add wave -noupdate -format Literal /IIR_tb/UUT/filter/y_delay_3
add wave -noupdate -format Literal /IIR_tb/UUT/filter/reg_m_6
add wave -noupdate -format Literal /IIR_tb/UUT/filter/s_5
add wave -noupdate -format Literal /IIR_tb/UUT/filter/y_delay_2
add wave -noupdate -format Literal /IIR_tb/UUT/filter/reg_m_7
add wave -noupdate -format Literal /IIR_tb/UUT/filter/s_6
add wave -noupdate -format Literal /IIR_tb/UUT/filter/y_delay_1
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {120 ns} 0}
configure wave -namecolwidth 222
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {512 ns}
