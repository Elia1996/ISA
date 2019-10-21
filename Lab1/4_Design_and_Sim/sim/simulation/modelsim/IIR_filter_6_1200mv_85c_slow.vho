-- Copyright (C) 1991-2011 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 11.0 Build 208 07/03/2011 Service Pack 1 SJ Web Edition"

-- DATE "10/21/2019 12:27:07"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	IIR_filter IS
    PORT (
	DOUT : OUT std_logic_vector(11 DOWNTO 0);
	VOUT : OUT std_logic;
	DIN : IN std_logic_vector(11 DOWNTO 0);
	CLK : IN std_logic;
	RST_n : IN std_logic;
	VIN : IN std_logic
	);
END IIR_filter;

-- Design Ports Information
-- DOUT[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[4]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[5]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[6]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[7]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[8]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[9]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[10]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[11]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VOUT	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_n	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VIN	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[5]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[4]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[0]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[8]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[10]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[9]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[11]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF IIR_filter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DOUT : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_VOUT : std_logic;
SIGNAL ww_DIN : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST_n : std_logic;
SIGNAL ww_VIN : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~23\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~25\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~27\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~29\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \filter|v1a0_piu_v2a1[2]~4_combout\ : std_logic;
SIGNAL \filter|v1a0_piu_v2a1[3]~6_combout\ : std_logic;
SIGNAL \filter|v1a0_piu_v2a1[4]~8_combout\ : std_logic;
SIGNAL \filter|v1a0_piu_v2a1[5]~10_combout\ : std_logic;
SIGNAL \filter|v1a0_piu_v2a1[6]~12_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~29\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \filter|v1a0_piu_v2a1[10]~21\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \filter|v1a0_piu_v2a1[11]~22_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \filter|Add2~10_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \filter|Add2~12_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \filter|Add2~14_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \filter|Add2~16_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[0][12]~combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[1][7]~combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[0][10]~2_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[0][9]~3_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[0][8]~4_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[1][3]~combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[0][6]~7_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[0][12]~0_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[0][11]~combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|romout[0][13]~0_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[1][5]~combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[0][8]~combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[0][7]~3_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[1][2]~4_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[0][5]~6_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[2][4]~7_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[2][3]~8_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|romout[0][12]~2_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|romout[1][7]~3_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|romout[0][9]~5_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|romout[0][7]~7_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|romout[2][8]~8_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[1][11]~combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|romout[1][12]~combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|romout[0][11]~combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|romout[0][10]~3_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|romout[1][5]~4_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|romout[1][4]~combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|romout[1][3]~combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|romout[1][2]~6_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|romout[0][4]~9_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|_~1_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|romout[2][6]~11_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|romout[2][4]~12_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|romout[2][3]~13_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|romout[2][2]~14_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|romout[2][11]~10_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[1][8]~0_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[1][7]~2_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[0][10]~combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[1][5]~4_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[0][8]~6_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[0][7]~8_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[1][2]~9_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[0][5]~11_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|romout[2][12]~combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[2][11]~12_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[2][4]~combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[2][3]~combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[0][13]~9_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[2][5]~combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[2][5]~15_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[1][9]~13_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[2][5]~14_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[1][10]~combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[2][6]~16_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[1][10]~15_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[2][6]~combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[1][11]~11_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[2][8]~combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[2][8]~18_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[2][8]~combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[2][9]~combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[2][10]~combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[2][11]~combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[2][11]~18_combout\ : std_logic;
SIGNAL \filter|Reg_in|data_out~6_combout\ : std_logic;
SIGNAL \filter|Reg_in|data_out~7_combout\ : std_logic;
SIGNAL \filter|Reg_in|data_out~8_combout\ : std_logic;
SIGNAL \filter|Reg_in|data_out~9_combout\ : std_logic;
SIGNAL \filter|Reg_in|data_out~10_combout\ : std_logic;
SIGNAL \filter|Reg_in|data_out~11_combout\ : std_logic;
SIGNAL \DIN[6]~input_o\ : std_logic;
SIGNAL \DIN[1]~input_o\ : std_logic;
SIGNAL \DIN[0]~input_o\ : std_logic;
SIGNAL \DIN[7]~input_o\ : std_logic;
SIGNAL \DIN[8]~input_o\ : std_logic;
SIGNAL \DIN[10]~input_o\ : std_logic;
SIGNAL \DIN[9]~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \DIN[5]~input_o\ : std_logic;
SIGNAL \filter|Reg_in|data_out~2_combout\ : std_logic;
SIGNAL \VIN~input_o\ : std_logic;
SIGNAL \RST_n~input_o\ : std_logic;
SIGNAL \filter|Reg_in|data_out[10]~1_combout\ : std_logic;
SIGNAL \DIN[4]~input_o\ : std_logic;
SIGNAL \filter|Reg_in|data_out~3_combout\ : std_logic;
SIGNAL \DIN[3]~input_o\ : std_logic;
SIGNAL \filter|Reg_in|data_out~4_combout\ : std_logic;
SIGNAL \DIN[2]~input_o\ : std_logic;
SIGNAL \filter|Reg_in|data_out~5_combout\ : std_logic;
SIGNAL \DIN[11]~input_o\ : std_logic;
SIGNAL \filter|Reg_in|data_out~12_combout\ : std_logic;
SIGNAL \filter|Reg_delay_2|data_out~8_combout\ : std_logic;
SIGNAL \filter|Reg_ctrl_1|data_out~0_combout\ : std_logic;
SIGNAL \filter|Reg_out|data_out[1]~13_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|romout[2][11]~15_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|romout[2][10]~10_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|romout[2][10]~combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|romout[2][9]~combout\ : std_logic;
SIGNAL \filter|v[4]~8_combout\ : std_logic;
SIGNAL \filter|Reg_delay_1|data_out~2_combout\ : std_logic;
SIGNAL \filter|Reg_in|data_out~0_combout\ : std_logic;
SIGNAL \filter|v[5]~11\ : std_logic;
SIGNAL \filter|v[6]~12_combout\ : std_logic;
SIGNAL \filter|Reg_delay_1|data_out~1_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|romout[1][12]~combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|romout[1][11]~0_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|romout[1][10]~combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|romout[1][9]~combout\ : std_logic;
SIGNAL \filter|v[6]~13\ : std_logic;
SIGNAL \filter|v[7]~14_combout\ : std_logic;
SIGNAL \filter|Reg_delay_1|data_out~3_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|romout[1][8]~1_combout\ : std_logic;
SIGNAL \filter|v[3]~6_combout\ : std_logic;
SIGNAL \filter|Reg_delay_1|data_out~7_combout\ : std_logic;
SIGNAL \filter|Reg_delay_2|data_out~4_combout\ : std_logic;
SIGNAL \filter|Reg_delay_2|data_out~6_combout\ : std_logic;
SIGNAL \filter|v[0]~0_combout\ : std_logic;
SIGNAL \filter|Reg_delay_1|data_out~4_combout\ : std_logic;
SIGNAL \filter|Reg_delay_2|data_out~7_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|romout[0][12]~2_combout\ : std_logic;
SIGNAL \filter|Reg_delay_2|data_out~0_combout\ : std_logic;
SIGNAL \filter|Reg_delay_2|data_out~2_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|_~0_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|romout[1][6]~combout\ : std_logic;
SIGNAL \filter|Reg_delay_2|data_out~5_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|romout[0][7]~5_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|romout[0][6]~7_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|romout[0][5]~8_combout\ : std_logic;
SIGNAL \filter|Reg_delay_2|data_out~3_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[2][1]~10_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \filter|v1a0_piu_v2a1[0]~0_combout\ : std_logic;
SIGNAL \filter|v[0]~1\ : std_logic;
SIGNAL \filter|v[1]~2_combout\ : std_logic;
SIGNAL \filter|Reg_delay_1|data_out~6_combout\ : std_logic;
SIGNAL \filter|v[2]~4_combout\ : std_logic;
SIGNAL \filter|Reg_delay_1|data_out~5_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|romout[0][11]~combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|romout[0][10]~4_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|romout[0][8]~6_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~19\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~21\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~23\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|romout[2][7]~9_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|romout[1][10]~1_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~19\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \filter|v1a0_piu_v2a1[0]~1\ : std_logic;
SIGNAL \filter|v1a0_piu_v2a1[1]~3\ : std_logic;
SIGNAL \filter|v1a0_piu_v2a1[2]~5\ : std_logic;
SIGNAL \filter|v1a0_piu_v2a1[3]~7\ : std_logic;
SIGNAL \filter|v1a0_piu_v2a1[4]~9\ : std_logic;
SIGNAL \filter|v1a0_piu_v2a1[5]~11\ : std_logic;
SIGNAL \filter|v1a0_piu_v2a1[6]~13\ : std_logic;
SIGNAL \filter|v1a0_piu_v2a1[7]~14_combout\ : std_logic;
SIGNAL \filter|v[7]~15\ : std_logic;
SIGNAL \filter|v[8]~17\ : std_logic;
SIGNAL \filter|v[9]~18_combout\ : std_logic;
SIGNAL \filter|Reg_delay_1|data_out~10_combout\ : std_logic;
SIGNAL \filter|Reg_delay_2|data_out~11_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|romout[1][11]~combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~21\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \filter|v1a0_piu_v2a1[7]~15\ : std_logic;
SIGNAL \filter|v1a0_piu_v2a1[8]~16_combout\ : std_logic;
SIGNAL \filter|v[8]~16_combout\ : std_logic;
SIGNAL \filter|Reg_delay_1|data_out~9_combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|romout[2][12]~combout\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\ : std_logic;
SIGNAL \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \filter|v1a0_piu_v2a1[8]~17\ : std_logic;
SIGNAL \filter|v1a0_piu_v2a1[9]~18_combout\ : std_logic;
SIGNAL \filter|v[9]~19\ : std_logic;
SIGNAL \filter|v[10]~21\ : std_logic;
SIGNAL \filter|v[11]~22_combout\ : std_logic;
SIGNAL \filter|Reg_delay_1|data_out~8_combout\ : std_logic;
SIGNAL \filter|Reg_delay_2|data_out~10_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[2][10]~13_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \filter|v1a0_piu_v2a1[9]~19\ : std_logic;
SIGNAL \filter|v1a0_piu_v2a1[10]~20_combout\ : std_logic;
SIGNAL \filter|v[10]~20_combout\ : std_logic;
SIGNAL \filter|Reg_delay_1|data_out~11_combout\ : std_logic;
SIGNAL \filter|Reg_delay_2|data_out~9_combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|romout[2][5]~combout\ : std_logic;
SIGNAL \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \filter|v1a0_piu_v2a1[1]~2_combout\ : std_logic;
SIGNAL \filter|v[1]~3\ : std_logic;
SIGNAL \filter|v[2]~5\ : std_logic;
SIGNAL \filter|v[3]~7\ : std_logic;
SIGNAL \filter|v[4]~9\ : std_logic;
SIGNAL \filter|v[5]~10_combout\ : std_logic;
SIGNAL \filter|Reg_delay_1|data_out~0_combout\ : std_logic;
SIGNAL \filter|Reg_delay_2|data_out~1_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[1][8]~combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[1][7]~1_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[1][6]~2_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[0][9]~combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[1][4]~combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[1][3]~combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[0][6]~combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[1][1]~5_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[0][4]~combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[2][2]~9_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \filter|Add2~0_combout\ : std_logic;
SIGNAL \filter|Reg_out|data_out[0]~11_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[1][9]~combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \filter|Add2~1\ : std_logic;
SIGNAL \filter|Add2~2_combout\ : std_logic;
SIGNAL \filter|Reg_out|data_out[0]~12\ : std_logic;
SIGNAL \filter|Reg_out|data_out[1]~14_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[1][10]~combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~19\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \filter|Add2~3\ : std_logic;
SIGNAL \filter|Add2~4_combout\ : std_logic;
SIGNAL \filter|Reg_out|data_out[1]~15\ : std_logic;
SIGNAL \filter|Reg_out|data_out[2]~16_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[2][7]~17_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \filter|Add2~5\ : std_logic;
SIGNAL \filter|Add2~6_combout\ : std_logic;
SIGNAL \filter|Reg_out|data_out[2]~17\ : std_logic;
SIGNAL \filter|Reg_out|data_out[3]~18_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[1][12]~12_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[1][9]~combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[1][8]~combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[0][11]~0_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[1][6]~1_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[1][5]~combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[1][4]~combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[0][7]~5_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[1][2]~6_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[0][5]~combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~19\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~21\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[2][7]~combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[2][6]~10_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[2][4]~combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[2][3]~combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[2][2]~8_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \filter|Add2~7\ : std_logic;
SIGNAL \filter|Add2~8_combout\ : std_logic;
SIGNAL \filter|Reg_out|data_out[3]~19\ : std_logic;
SIGNAL \filter|Reg_out|data_out[4]~20_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[2][9]~combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[1][12]~17_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[1][11]~16_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[0][12]~1_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[0][11]~combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[1][6]~3_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[0][9]~5_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[1][4]~combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[1][3]~7_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[0][6]~combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[1][1]~10_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[0][4]~combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[2][7]~combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[2][2]~combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[2][1]~12_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \filter|Reg_out|data_out[4]~21\ : std_logic;
SIGNAL \filter|Reg_out|data_out[5]~22_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \filter|Reg_out|data_out[5]~23\ : std_logic;
SIGNAL \filter|Reg_out|data_out[6]~24_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \filter|Reg_out|data_out[6]~25\ : std_logic;
SIGNAL \filter|Reg_out|data_out[7]~26_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|romout[2][12]~19_combout\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\ : std_logic;
SIGNAL \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \filter|Reg_out|data_out[7]~27\ : std_logic;
SIGNAL \filter|Reg_out|data_out[8]~28_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[2][13]~14_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[2][12]~combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[2][10]~combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|romout[1][13]~13_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~23\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[2][12]~14_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[2][9]~combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|romout[1][12]~11_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~21\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~23\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\ : std_logic;
SIGNAL \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \filter|Add2~9\ : std_logic;
SIGNAL \filter|Add2~11\ : std_logic;
SIGNAL \filter|Add2~13\ : std_logic;
SIGNAL \filter|Add2~15\ : std_logic;
SIGNAL \filter|Add2~17\ : std_logic;
SIGNAL \filter|Add2~18_combout\ : std_logic;
SIGNAL \filter|Reg_out|data_out[8]~29\ : std_logic;
SIGNAL \filter|Reg_out|data_out[9]~30_combout\ : std_logic;
SIGNAL \filter|Add2~19\ : std_logic;
SIGNAL \filter|Add2~20_combout\ : std_logic;
SIGNAL \filter|Reg_out|data_out[9]~31\ : std_logic;
SIGNAL \filter|Reg_out|data_out[10]~32_combout\ : std_logic;
SIGNAL \filter|Reg_ctrl_2|data_out~0_combout\ : std_logic;
SIGNAL \filter|Reg_ctrl_1|data_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \filter|Reg_in|data_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \filter|Reg_ctrl_2|data_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \filter|Reg_out|data_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \filter|Reg_delay_2|data_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \filter|Reg_delay_1|data_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_RST_n~input_o\ : std_logic;

BEGIN

DOUT <= ww_DOUT;
VOUT <= ww_VOUT;
ww_DIN <= DIN;
ww_CLK <= CLK;
ww_RST_n <= RST_n;
ww_VIN <= VIN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RST_n~input_o\ <= NOT \RST_n~input_o\;

-- Location: LCCOMB_X16_Y22_N14
\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\filter|Mult2|mult_core|romout[0][10]~2_combout\ & ((\filter|Mult2|mult_core|romout[1][6]~1_combout\ & (\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~9\ & VCC)) # 
-- (!\filter|Mult2|mult_core|romout[1][6]~1_combout\ & (!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~9\)))) # (!\filter|Mult2|mult_core|romout[0][10]~2_combout\ & ((\filter|Mult2|mult_core|romout[1][6]~1_combout\ & 
-- (!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\filter|Mult2|mult_core|romout[1][6]~1_combout\ & ((\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((\filter|Mult2|mult_core|romout[0][10]~2_combout\ & (!\filter|Mult2|mult_core|romout[1][6]~1_combout\ & !\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # 
-- (!\filter|Mult2|mult_core|romout[0][10]~2_combout\ & ((!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\filter|Mult2|mult_core|romout[1][6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult2|mult_core|romout[0][10]~2_combout\,
	datab => \filter|Mult2|mult_core|romout[1][6]~1_combout\,
	datad => VCC,
	cin => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X16_Y22_N16
\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = ((\filter|Mult2|mult_core|romout[1][7]~combout\ $ (\filter|Mult2|mult_core|romout[0][11]~0_combout\ $ (\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\filter|Mult2|mult_core|romout[1][7]~combout\ & ((!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~11\) # (!\filter|Mult2|mult_core|romout[0][11]~0_combout\))) # 
-- (!\filter|Mult2|mult_core|romout[1][7]~combout\ & (!\filter|Mult2|mult_core|romout[0][11]~0_combout\ & !\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult2|mult_core|romout[1][7]~combout\,
	datab => \filter|Mult2|mult_core|romout[0][11]~0_combout\,
	datad => VCC,
	cin => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X16_Y22_N18
\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = (\filter|Mult2|mult_core|romout[0][12]~combout\ & ((\filter|Mult2|mult_core|romout[1][8]~combout\ & (\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~13\ & VCC)) # 
-- (!\filter|Mult2|mult_core|romout[1][8]~combout\ & (!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~13\)))) # (!\filter|Mult2|mult_core|romout[0][12]~combout\ & ((\filter|Mult2|mult_core|romout[1][8]~combout\ & 
-- (!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # (!\filter|Mult2|mult_core|romout[1][8]~combout\ & ((\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~15\ = CARRY((\filter|Mult2|mult_core|romout[0][12]~combout\ & (!\filter|Mult2|mult_core|romout[1][8]~combout\ & !\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # 
-- (!\filter|Mult2|mult_core|romout[0][12]~combout\ & ((!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (!\filter|Mult2|mult_core|romout[1][8]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult2|mult_core|romout[0][12]~combout\,
	datab => \filter|Mult2|mult_core|romout[1][8]~combout\,
	datad => VCC,
	cin => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cout => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X17_Y19_N10
\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = (\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & ((\filter|Mult2|mult_core|romout[2][4]~combout\ & 
-- (\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\ & VCC)) # (!\filter|Mult2|mult_core|romout[2][4]~combout\ & (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\)))) # 
-- (!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & ((\filter|Mult2|mult_core|romout[2][4]~combout\ & (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\)) # 
-- (!\filter|Mult2|mult_core|romout[2][4]~combout\ & ((\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\) # (GND)))))
-- \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ = CARRY((\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (!\filter|Mult2|mult_core|romout[2][4]~combout\ & 
-- !\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\)) # (!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & ((!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\) # 
-- (!\filter|Mult2|mult_core|romout[2][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datab => \filter|Mult2|mult_core|romout[2][4]~combout\,
	datad => VCC,
	cin => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\,
	combout => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	cout => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X13_Y13_N14
\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\filter|Mult4|mult_core|romout[0][8]~combout\ $ (\filter|Mult4|mult_core|romout[1][4]~combout\ $ (!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\)))) # (GND)
-- \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\filter|Mult4|mult_core|romout[0][8]~combout\ & ((\filter|Mult4|mult_core|romout[1][4]~combout\) # (!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\))) # 
-- (!\filter|Mult4|mult_core|romout[0][8]~combout\ & (\filter|Mult4|mult_core|romout[1][4]~combout\ & !\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult4|mult_core|romout[0][8]~combout\,
	datab => \filter|Mult4|mult_core|romout[1][4]~combout\,
	datad => VCC,
	cin => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\,
	combout => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X13_Y13_N16
\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\filter|Mult4|mult_core|romout[1][5]~combout\ & ((\filter|Mult4|mult_core|romout[0][9]~combout\ & (\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~9\ & VCC)) # 
-- (!\filter|Mult4|mult_core|romout[0][9]~combout\ & (!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~9\)))) # (!\filter|Mult4|mult_core|romout[1][5]~combout\ & ((\filter|Mult4|mult_core|romout[0][9]~combout\ & 
-- (!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\filter|Mult4|mult_core|romout[0][9]~combout\ & ((\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((\filter|Mult4|mult_core|romout[1][5]~combout\ & (!\filter|Mult4|mult_core|romout[0][9]~combout\ & !\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # 
-- (!\filter|Mult4|mult_core|romout[1][5]~combout\ & ((!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\filter|Mult4|mult_core|romout[0][9]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult4|mult_core|romout[1][5]~combout\,
	datab => \filter|Mult4|mult_core|romout[0][9]~combout\,
	datad => VCC,
	cin => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X13_Y13_N18
\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = ((\filter|Mult3|mult_core|romout[0][13]~0_combout\ $ (\filter|Mult4|mult_core|romout[1][6]~2_combout\ $ (!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\filter|Mult3|mult_core|romout[0][13]~0_combout\ & ((\filter|Mult4|mult_core|romout[1][6]~2_combout\) # (!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~11\))) # 
-- (!\filter|Mult3|mult_core|romout[0][13]~0_combout\ & (\filter|Mult4|mult_core|romout[1][6]~2_combout\ & !\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|romout[0][13]~0_combout\,
	datab => \filter|Mult4|mult_core|romout[1][6]~2_combout\,
	datad => VCC,
	cin => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X14_Y24_N10
\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\filter|Reg_delay_1|data_out\(4) $ (\filter|Mult1|mult_core|romout[0][8]~6_combout\ $ (!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\)))) # (GND)
-- \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\filter|Reg_delay_1|data_out\(4) & ((\filter|Mult1|mult_core|romout[0][8]~6_combout\) # (!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\))) # 
-- (!\filter|Reg_delay_1|data_out\(4) & (\filter|Mult1|mult_core|romout[0][8]~6_combout\ & !\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(4),
	datab => \filter|Mult1|mult_core|romout[0][8]~6_combout\,
	datad => VCC,
	cin => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\,
	combout => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X14_Y24_N12
\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\filter|Mult1|mult_core|romout[0][9]~5_combout\ & ((\filter|Reg_delay_1|data_out\(5) & (\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\ & VCC)) # 
-- (!\filter|Reg_delay_1|data_out\(5) & (!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\)))) # (!\filter|Mult1|mult_core|romout[0][9]~5_combout\ & ((\filter|Reg_delay_1|data_out\(5) & 
-- (!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\filter|Reg_delay_1|data_out\(5) & ((\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((\filter|Mult1|mult_core|romout[0][9]~5_combout\ & (!\filter|Reg_delay_1|data_out\(5) & !\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # 
-- (!\filter|Mult1|mult_core|romout[0][9]~5_combout\ & ((!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\filter|Reg_delay_1|data_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult1|mult_core|romout[0][9]~5_combout\,
	datab => \filter|Reg_delay_1|data_out\(5),
	datad => VCC,
	cin => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X14_Y24_N14
\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = ((\filter|Reg_delay_1|data_out\(6) $ (\filter|Mult1|mult_core|romout[0][10]~4_combout\ $ (!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\filter|Reg_delay_1|data_out\(6) & ((\filter|Mult1|mult_core|romout[0][10]~4_combout\) # (!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\))) # 
-- (!\filter|Reg_delay_1|data_out\(6) & (\filter|Mult1|mult_core|romout[0][10]~4_combout\ & !\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(6),
	datab => \filter|Mult1|mult_core|romout[0][10]~4_combout\,
	datad => VCC,
	cin => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X14_Y24_N18
\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = ((\filter|Mult1|mult_core|romout[0][12]~2_combout\ $ (\filter|Mult1|mult_core|romout[1][8]~1_combout\ $ (!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~15\)))) # (GND)
-- \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~17\ = CARRY((\filter|Mult1|mult_core|romout[0][12]~2_combout\ & ((\filter|Mult1|mult_core|romout[1][8]~1_combout\) # (!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~15\))) # 
-- (!\filter|Mult1|mult_core|romout[0][12]~2_combout\ & (\filter|Mult1|mult_core|romout[1][8]~1_combout\ & !\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult1|mult_core|romout[0][12]~2_combout\,
	datab => \filter|Mult1|mult_core|romout[1][8]~1_combout\,
	datad => VCC,
	cin => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	cout => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X14_Y24_N20
\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ = (\filter|Mult1|mult_core|romout[1][9]~combout\ & (!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~17\)) # (!\filter|Mult1|mult_core|romout[1][9]~combout\ & 
-- ((\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (GND)))
-- \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~19\ = CARRY((!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (!\filter|Mult1|mult_core|romout[1][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filter|Mult1|mult_core|romout[1][9]~combout\,
	datad => VCC,
	cin => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~17\,
	combout => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	cout => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~19\);

-- Location: LCCOMB_X14_Y24_N24
\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ = (\filter|Mult1|mult_core|romout[1][11]~0_combout\ & (!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~21\)) # (!\filter|Mult1|mult_core|romout[1][11]~0_combout\ & 
-- ((\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~21\) # (GND)))
-- \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~23\ = CARRY((!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~21\) # (!\filter|Mult1|mult_core|romout[1][11]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filter|Mult1|mult_core|romout[1][11]~0_combout\,
	datad => VCC,
	cin => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~21\,
	combout => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	cout => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~23\);

-- Location: LCCOMB_X14_Y23_N12
\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ = ((\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ $ (\filter|Reg_delay_1|data_out\(8) $ 
-- (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\)))) # (GND)
-- \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ = CARRY((\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & ((\filter|Reg_delay_1|data_out\(8)) # 
-- (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\))) # (!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & (\filter|Reg_delay_1|data_out\(8) & 
-- !\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datab => \filter|Reg_delay_1|data_out\(8),
	datad => VCC,
	cin => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\,
	combout => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	cout => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X14_Y23_N14
\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ = (\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & ((\filter|Reg_delay_1|data_out\(9) & 
-- (\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ & VCC)) # (!\filter|Reg_delay_1|data_out\(9) & (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)))) # 
-- (!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & ((\filter|Reg_delay_1|data_out\(9) & (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # (!\filter|Reg_delay_1|data_out\(9) & 
-- ((\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ = CARRY((\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & (!\filter|Reg_delay_1|data_out\(9) & 
-- !\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # (!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & ((!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # 
-- (!\filter|Reg_delay_1|data_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	datab => \filter|Reg_delay_1|data_out\(9),
	datad => VCC,
	cin => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\,
	combout => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	cout => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X14_Y23_N16
\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ = ((\filter|Reg_delay_1|data_out\(10) $ (\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ $ 
-- (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ = CARRY((\filter|Reg_delay_1|data_out\(10) & ((\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\) # 
-- (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\))) # (!\filter|Reg_delay_1|data_out\(10) & (\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & 
-- !\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(10),
	datab => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\,
	combout => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	cout => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X15_Y13_N8
\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\filter|Mult3|mult_core|romout[1][4]~combout\ $ (\filter|Reg_delay_2|data_out\(0) $ (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\)))) # (GND)
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\filter|Mult3|mult_core|romout[1][4]~combout\ & ((\filter|Reg_delay_2|data_out\(0)) # (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\))) # 
-- (!\filter|Mult3|mult_core|romout[1][4]~combout\ & (\filter|Reg_delay_2|data_out\(0) & !\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|romout[1][4]~combout\,
	datab => \filter|Reg_delay_2|data_out\(0),
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\,
	combout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X15_Y13_N10
\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\filter|Mult3|mult_core|romout[1][5]~4_combout\ & ((\filter|Reg_delay_2|data_out\(1) & (\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~9\ & VCC)) # 
-- (!\filter|Reg_delay_2|data_out\(1) & (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~9\)))) # (!\filter|Mult3|mult_core|romout[1][5]~4_combout\ & ((\filter|Reg_delay_2|data_out\(1) & 
-- (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\filter|Reg_delay_2|data_out\(1) & ((\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((\filter|Mult3|mult_core|romout[1][5]~4_combout\ & (!\filter|Reg_delay_2|data_out\(1) & !\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # 
-- (!\filter|Mult3|mult_core|romout[1][5]~4_combout\ & ((!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\filter|Reg_delay_2|data_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|romout[1][5]~4_combout\,
	datab => \filter|Reg_delay_2|data_out\(1),
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X15_Y13_N18
\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ = (\filter|Mult3|mult_core|romout[0][13]~0_combout\ & ((\filter|Reg_delay_2|data_out\(5) & (\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~17\ & VCC)) # 
-- (!\filter|Reg_delay_2|data_out\(5) & (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~17\)))) # (!\filter|Mult3|mult_core|romout[0][13]~0_combout\ & ((\filter|Reg_delay_2|data_out\(5) & 
-- (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~17\)) # (!\filter|Reg_delay_2|data_out\(5) & ((\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (GND)))))
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~19\ = CARRY((\filter|Mult3|mult_core|romout[0][13]~0_combout\ & (!\filter|Reg_delay_2|data_out\(5) & !\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~17\)) # 
-- (!\filter|Mult3|mult_core|romout[0][13]~0_combout\ & ((!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (!\filter|Reg_delay_2|data_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|romout[0][13]~0_combout\,
	datab => \filter|Reg_delay_2|data_out\(5),
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~17\,
	combout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	cout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~19\);

-- Location: LCCOMB_X15_Y13_N22
\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ = (\filter|Mult4|mult_core|romout[0][12]~0_combout\ & ((\filter|Mult3|mult_core|romout[1][11]~combout\ & (\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~21\ & VCC)) # 
-- (!\filter|Mult3|mult_core|romout[1][11]~combout\ & (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~21\)))) # (!\filter|Mult4|mult_core|romout[0][12]~0_combout\ & ((\filter|Mult3|mult_core|romout[1][11]~combout\ & 
-- (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~21\)) # (!\filter|Mult3|mult_core|romout[1][11]~combout\ & ((\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~21\) # (GND)))))
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~23\ = CARRY((\filter|Mult4|mult_core|romout[0][12]~0_combout\ & (!\filter|Mult3|mult_core|romout[1][11]~combout\ & !\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~21\)) # 
-- (!\filter|Mult4|mult_core|romout[0][12]~0_combout\ & ((!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~21\) # (!\filter|Mult3|mult_core|romout[1][11]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult4|mult_core|romout[0][12]~0_combout\,
	datab => \filter|Mult3|mult_core|romout[1][11]~combout\,
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~21\,
	combout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	cout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~23\);

-- Location: LCCOMB_X15_Y13_N24
\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ = (\filter|Mult3|mult_core|romout[1][12]~combout\ & (\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~23\ $ (GND))) # (!\filter|Mult3|mult_core|romout[1][12]~combout\ & 
-- (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~23\ & VCC))
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~25\ = CARRY((\filter|Mult3|mult_core|romout[1][12]~combout\ & !\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filter|Mult3|mult_core|romout[1][12]~combout\,
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~23\,
	combout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\,
	cout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~25\);

-- Location: LCCOMB_X15_Y13_N26
\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\ = (\filter|Mult4|mult_core|romout[1][10]~combout\ & (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~25\)) # (!\filter|Mult4|mult_core|romout[1][10]~combout\ & 
-- ((\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~25\) # (GND)))
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~27\ = CARRY((!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~25\) # (!\filter|Mult4|mult_core|romout[1][10]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filter|Mult4|mult_core|romout[1][10]~combout\,
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~25\,
	combout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\,
	cout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~27\);

-- Location: LCCOMB_X15_Y13_N28
\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\ = (\filter|Mult4|mult_core|romout[1][11]~combout\ & (\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~27\ $ (GND))) # (!\filter|Mult4|mult_core|romout[1][11]~combout\ & 
-- (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~27\ & VCC))
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~29\ = CARRY((\filter|Mult4|mult_core|romout[1][11]~combout\ & !\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filter|Mult4|mult_core|romout[1][11]~combout\,
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~27\,
	combout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\,
	cout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~29\);

-- Location: LCCOMB_X15_Y16_N14
\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ = (\filter|Mult4|mult_core|_~1_combout\ & ((\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & 
-- (\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ & VCC)) # (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)))) # 
-- (!\filter|Mult4|mult_core|_~1_combout\ & ((\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)) # 
-- (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & ((\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ = CARRY((\filter|Mult4|mult_core|_~1_combout\ & (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & 
-- !\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)) # (!\filter|Mult4|mult_core|_~1_combout\ & ((!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # 
-- (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult4|mult_core|_~1_combout\,
	datab => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\,
	combout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	cout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X15_Y16_N16
\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ = ((\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ $ (\filter|Reg_delay_2|data_out\(8) $ 
-- (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\)))) # (GND)
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ = CARRY((\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ & ((\filter|Reg_delay_2|data_out\(8)) # 
-- (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\))) # (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ & (\filter|Reg_delay_2|data_out\(8) & 
-- !\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\,
	datab => \filter|Reg_delay_2|data_out\(8),
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\,
	combout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	cout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X15_Y16_N18
\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ = (\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\ & ((\filter|Reg_delay_2|data_out\(9) & 
-- (\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ & VCC)) # (!\filter|Reg_delay_2|data_out\(9) & (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\)))) # 
-- (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\ & ((\filter|Reg_delay_2|data_out\(9) & (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\)) # (!\filter|Reg_delay_2|data_out\(9) & 
-- ((\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\) # (GND)))))
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ = CARRY((\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\ & (!\filter|Reg_delay_2|data_out\(9) & 
-- !\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\)) # (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\ & ((!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\) # 
-- (!\filter|Reg_delay_2|data_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\,
	datab => \filter|Reg_delay_2|data_out\(9),
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\,
	combout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	cout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\);

-- Location: LCCOMB_X15_Y16_N20
\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ = ((\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\ $ (\filter|Mult3|mult_core|romout[2][10]~10_combout\ $ 
-- (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\)))) # (GND)
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\ = CARRY((\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\ & ((\filter|Mult3|mult_core|romout[2][10]~10_combout\) # 
-- (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\))) # (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\ & (\filter|Mult3|mult_core|romout[2][10]~10_combout\ & 
-- !\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\,
	datab => \filter|Mult3|mult_core|romout[2][10]~10_combout\,
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\,
	combout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\,
	cout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\);

-- Location: LCCOMB_X15_Y23_N8
\filter|v1a0_piu_v2a1[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|v1a0_piu_v2a1[2]~4_combout\ = ((\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ $ (\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ $ (!\filter|v1a0_piu_v2a1[1]~3\)))) # (GND)
-- \filter|v1a0_piu_v2a1[2]~5\ = CARRY((\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & ((\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\) # (!\filter|v1a0_piu_v2a1[1]~3\))) # 
-- (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & (\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & !\filter|v1a0_piu_v2a1[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	datab => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \filter|v1a0_piu_v2a1[1]~3\,
	combout => \filter|v1a0_piu_v2a1[2]~4_combout\,
	cout => \filter|v1a0_piu_v2a1[2]~5\);

-- Location: LCCOMB_X15_Y23_N10
\filter|v1a0_piu_v2a1[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|v1a0_piu_v2a1[3]~6_combout\ = (\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & ((\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & (\filter|v1a0_piu_v2a1[2]~5\ & VCC)) # 
-- (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & (!\filter|v1a0_piu_v2a1[2]~5\)))) # (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & 
-- ((\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & (!\filter|v1a0_piu_v2a1[2]~5\)) # (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & ((\filter|v1a0_piu_v2a1[2]~5\) # (GND)))))
-- \filter|v1a0_piu_v2a1[3]~7\ = CARRY((\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & !\filter|v1a0_piu_v2a1[2]~5\)) # 
-- (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & ((!\filter|v1a0_piu_v2a1[2]~5\) # (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datab => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \filter|v1a0_piu_v2a1[2]~5\,
	combout => \filter|v1a0_piu_v2a1[3]~6_combout\,
	cout => \filter|v1a0_piu_v2a1[3]~7\);

-- Location: LCCOMB_X15_Y23_N12
\filter|v1a0_piu_v2a1[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|v1a0_piu_v2a1[4]~8_combout\ = ((\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ $ (\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ $ (!\filter|v1a0_piu_v2a1[3]~7\)))) # (GND)
-- \filter|v1a0_piu_v2a1[4]~9\ = CARRY((\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & ((\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\) # (!\filter|v1a0_piu_v2a1[3]~7\))) # 
-- (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & (\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & !\filter|v1a0_piu_v2a1[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datab => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \filter|v1a0_piu_v2a1[3]~7\,
	combout => \filter|v1a0_piu_v2a1[4]~8_combout\,
	cout => \filter|v1a0_piu_v2a1[4]~9\);

-- Location: LCCOMB_X15_Y23_N14
\filter|v1a0_piu_v2a1[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|v1a0_piu_v2a1[5]~10_combout\ = (\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (\filter|v1a0_piu_v2a1[4]~9\ & VCC)) # 
-- (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (!\filter|v1a0_piu_v2a1[4]~9\)))) # (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & 
-- ((\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (!\filter|v1a0_piu_v2a1[4]~9\)) # (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((\filter|v1a0_piu_v2a1[4]~9\) # (GND)))))
-- \filter|v1a0_piu_v2a1[5]~11\ = CARRY((\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & !\filter|v1a0_piu_v2a1[4]~9\)) # 
-- (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((!\filter|v1a0_piu_v2a1[4]~9\) # (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datab => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \filter|v1a0_piu_v2a1[4]~9\,
	combout => \filter|v1a0_piu_v2a1[5]~10_combout\,
	cout => \filter|v1a0_piu_v2a1[5]~11\);

-- Location: LCCOMB_X15_Y23_N16
\filter|v1a0_piu_v2a1[6]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|v1a0_piu_v2a1[6]~12_combout\ = ((\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ $ (\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ $ (!\filter|v1a0_piu_v2a1[5]~11\)))) # 
-- (GND)
-- \filter|v1a0_piu_v2a1[6]~13\ = CARRY((\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ & ((\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\) # (!\filter|v1a0_piu_v2a1[5]~11\))) # 
-- (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ & (\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ & !\filter|v1a0_piu_v2a1[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\,
	datab => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \filter|v1a0_piu_v2a1[5]~11\,
	combout => \filter|v1a0_piu_v2a1[6]~12_combout\,
	cout => \filter|v1a0_piu_v2a1[6]~13\);

-- Location: LCCOMB_X14_Y23_N26
\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ = (\filter|Mult1|mult_core|romout[2][11]~10_combout\ & (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\)) # 
-- (!\filter|Mult1|mult_core|romout[2][11]~10_combout\ & ((\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\) # (GND)))
-- \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\ = CARRY((!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\) # (!\filter|Mult1|mult_core|romout[2][11]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult1|mult_core|romout[2][11]~10_combout\,
	datad => VCC,
	cin => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\,
	combout => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\,
	cout => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\);

-- Location: LCCOMB_X15_Y13_N30
\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~30_combout\ = \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~29\ $ (\filter|Mult4|mult_core|romout[1][12]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \filter|Mult4|mult_core|romout[1][12]~11_combout\,
	cin => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~29\,
	combout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~30_combout\);

-- Location: LCCOMB_X16_Y25_N12
\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\filter|Mult0|mult_core|romout[0][8]~6_combout\ $ (\filter|Mult0|mult_core|romout[1][4]~combout\ $ (!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\)))) # (GND)
-- \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\filter|Mult0|mult_core|romout[0][8]~6_combout\ & ((\filter|Mult0|mult_core|romout[1][4]~combout\) # (!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\))) # 
-- (!\filter|Mult0|mult_core|romout[0][8]~6_combout\ & (\filter|Mult0|mult_core|romout[1][4]~combout\ & !\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult0|mult_core|romout[0][8]~6_combout\,
	datab => \filter|Mult0|mult_core|romout[1][4]~combout\,
	datad => VCC,
	cin => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\,
	combout => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X16_Y25_N14
\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\filter|Mult0|mult_core|romout[1][5]~4_combout\ & ((\filter|Mult0|mult_core|romout[0][9]~5_combout\ & (\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ & VCC)) # 
-- (!\filter|Mult0|mult_core|romout[0][9]~5_combout\ & (!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)))) # (!\filter|Mult0|mult_core|romout[1][5]~4_combout\ & ((\filter|Mult0|mult_core|romout[0][9]~5_combout\ & 
-- (!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\filter|Mult0|mult_core|romout[0][9]~5_combout\ & ((\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((\filter|Mult0|mult_core|romout[1][5]~4_combout\ & (!\filter|Mult0|mult_core|romout[0][9]~5_combout\ & !\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # 
-- (!\filter|Mult0|mult_core|romout[1][5]~4_combout\ & ((!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\filter|Mult0|mult_core|romout[0][9]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult0|mult_core|romout[1][5]~4_combout\,
	datab => \filter|Mult0|mult_core|romout[0][9]~5_combout\,
	datad => VCC,
	cin => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X16_Y25_N16
\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = ((\filter|Mult0|mult_core|romout[0][10]~combout\ $ (\filter|Mult0|mult_core|romout[1][6]~3_combout\ $ (!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\filter|Mult0|mult_core|romout[0][10]~combout\ & ((\filter|Mult0|mult_core|romout[1][6]~3_combout\) # (!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\))) # 
-- (!\filter|Mult0|mult_core|romout[0][10]~combout\ & (\filter|Mult0|mult_core|romout[1][6]~3_combout\ & !\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult0|mult_core|romout[0][10]~combout\,
	datab => \filter|Mult0|mult_core|romout[1][6]~3_combout\,
	datad => VCC,
	cin => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X15_Y16_N24
\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ = (\filter|Mult3|mult_core|romout[2][12]~combout\ & (\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\ $ (GND))) # 
-- (!\filter|Mult3|mult_core|romout[2][12]~combout\ & (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\ & VCC))
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\ = CARRY((\filter|Mult3|mult_core|romout[2][12]~combout\ & !\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|romout[2][12]~combout\,
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\,
	combout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\,
	cout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\);

-- Location: LCCOMB_X15_Y16_N26
\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26_combout\ = (\filter|Mult4|mult_core|romout[2][10]~13_combout\ & (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\)) # 
-- (!\filter|Mult4|mult_core|romout[2][10]~13_combout\ & ((\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\) # (GND)))
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27\ = CARRY((!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\) # (!\filter|Mult4|mult_core|romout[2][10]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filter|Mult4|mult_core|romout[2][10]~13_combout\,
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\,
	combout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26_combout\,
	cout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27\);

-- Location: LCCOMB_X15_Y16_N28
\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28_combout\ = (\filter|Mult4|mult_core|romout[2][11]~12_combout\ & (\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27\ $ (GND))) # 
-- (!\filter|Mult4|mult_core|romout[2][11]~12_combout\ & (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27\ & VCC))
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~29\ = CARRY((\filter|Mult4|mult_core|romout[2][11]~12_combout\ & !\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filter|Mult4|mult_core|romout[2][11]~12_combout\,
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27\,
	combout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28_combout\,
	cout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~29\);

-- Location: LCCOMB_X15_Y23_N24
\filter|v1a0_piu_v2a1[10]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|v1a0_piu_v2a1[10]~20_combout\ = (\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28_combout\ & (\filter|v1a0_piu_v2a1[9]~19\ $ (GND))) # (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28_combout\ 
-- & (!\filter|v1a0_piu_v2a1[9]~19\ & VCC))
-- \filter|v1a0_piu_v2a1[10]~21\ = CARRY((\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28_combout\ & !\filter|v1a0_piu_v2a1[9]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28_combout\,
	datad => VCC,
	cin => \filter|v1a0_piu_v2a1[9]~19\,
	combout => \filter|v1a0_piu_v2a1[10]~20_combout\,
	cout => \filter|v1a0_piu_v2a1[10]~21\);

-- Location: LCCOMB_X15_Y16_N30
\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30_combout\ = \filter|Mult4|mult_core|romout[2][12]~14_combout\ $ (\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filter|Mult4|mult_core|romout[2][12]~14_combout\,
	cin => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~29\,
	combout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30_combout\);

-- Location: LCCOMB_X15_Y23_N26
\filter|v1a0_piu_v2a1[11]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|v1a0_piu_v2a1[11]~22_combout\ = \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30_combout\ $ (\filter|v1a0_piu_v2a1[10]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30_combout\,
	cin => \filter|v1a0_piu_v2a1[10]~21\,
	combout => \filter|v1a0_piu_v2a1[11]~22_combout\);

-- Location: LCCOMB_X17_Y25_N8
\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ = ((\filter|Mult0|mult_core|romout[2][4]~combout\ $ (\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ $ 
-- (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\)))) # (GND)
-- \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ = CARRY((\filter|Mult0|mult_core|romout[2][4]~combout\ & ((\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\) # 
-- (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\))) # (!\filter|Mult0|mult_core|romout[2][4]~combout\ & (\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & 
-- !\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult0|mult_core|romout[2][4]~combout\,
	datab => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\,
	combout => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	cout => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X17_Y19_N12
\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ = ((\filter|Mult2|mult_core|romout[2][5]~combout\ $ (\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ $ 
-- (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ = CARRY((\filter|Mult2|mult_core|romout[2][5]~combout\ & ((\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\) # 
-- (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\))) # (!\filter|Mult2|mult_core|romout[2][5]~combout\ & (\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & 
-- !\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult2|mult_core|romout[2][5]~combout\,
	datab => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\,
	combout => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	cout => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X17_Y25_N10
\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ = (\filter|Mult0|mult_core|romout[2][5]~14_combout\ & ((\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & 
-- (\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ & VCC)) # (!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)))) # 
-- (!\filter|Mult0|mult_core|romout[2][5]~14_combout\ & ((\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # 
-- (!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & ((\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ = CARRY((\filter|Mult0|mult_core|romout[2][5]~14_combout\ & (!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & 
-- !\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # (!\filter|Mult0|mult_core|romout[2][5]~14_combout\ & ((!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # 
-- (!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult0|mult_core|romout[2][5]~14_combout\,
	datab => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\,
	combout => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	cout => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X16_Y22_N22
\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ = (\filter|Mult2|mult_core|romout[1][10]~combout\ & (!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~17\)) # (!\filter|Mult2|mult_core|romout[1][10]~combout\ & 
-- ((\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (GND)))
-- \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~19\ = CARRY((!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (!\filter|Mult2|mult_core|romout[1][10]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult2|mult_core|romout[1][10]~combout\,
	datad => VCC,
	cin => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~17\,
	combout => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	cout => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~19\);

-- Location: LCCOMB_X17_Y19_N14
\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ = (\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & ((\filter|Mult2|mult_core|romout[2][6]~10_combout\ & 
-- (\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ & VCC)) # (!\filter|Mult2|mult_core|romout[2][6]~10_combout\ & (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)))) # 
-- (!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & ((\filter|Mult2|mult_core|romout[2][6]~10_combout\ & (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # 
-- (!\filter|Mult2|mult_core|romout[2][6]~10_combout\ & ((\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ = CARRY((\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & (!\filter|Mult2|mult_core|romout[2][6]~10_combout\ & 
-- !\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # (!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & ((!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # 
-- (!\filter|Mult2|mult_core|romout[2][6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	datab => \filter|Mult2|mult_core|romout[2][6]~10_combout\,
	datad => VCC,
	cin => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\,
	combout => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	cout => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X17_Y25_N12
\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ = ((\filter|Mult0|mult_core|romout[2][6]~combout\ $ (\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ $ 
-- (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ = CARRY((\filter|Mult0|mult_core|romout[2][6]~combout\ & ((\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\) # 
-- (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\))) # (!\filter|Mult0|mult_core|romout[2][6]~combout\ & (\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & 
-- !\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult0|mult_core|romout[2][6]~combout\,
	datab => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\,
	combout => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	cout => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X16_Y22_N24
\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ = (\filter|Mult2|mult_core|romout[1][11]~11_combout\ & (!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~19\ & VCC)) # (!\filter|Mult2|mult_core|romout[1][11]~11_combout\ 
-- & (\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~19\ $ (GND)))
-- \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~21\ = CARRY((!\filter|Mult2|mult_core|romout[1][11]~11_combout\ & !\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult2|mult_core|romout[1][11]~11_combout\,
	datad => VCC,
	cin => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~19\,
	combout => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	cout => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~21\);

-- Location: LCCOMB_X17_Y19_N16
\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ = ((\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ $ (\filter|Mult2|mult_core|romout[2][7]~combout\ $ 
-- (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ = CARRY((\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & ((\filter|Mult2|mult_core|romout[2][7]~combout\) # 
-- (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\))) # (!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & (\filter|Mult2|mult_core|romout[2][7]~combout\ & 
-- !\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	datab => \filter|Mult2|mult_core|romout[2][7]~combout\,
	datad => VCC,
	cin => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\,
	combout => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	cout => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X13_Y13_N28
\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ = (\filter|Mult4|mult_core|romout[1][11]~combout\ & (!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~21\)) # (!\filter|Mult4|mult_core|romout[1][11]~combout\ & 
-- ((\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~21\) # (GND)))
-- \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~23\ = CARRY((!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~21\) # (!\filter|Mult4|mult_core|romout[1][11]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult4|mult_core|romout[1][11]~combout\,
	datad => VCC,
	cin => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~21\,
	combout => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	cout => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~23\);

-- Location: LCCOMB_X16_Y25_N26
\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ = (\filter|Mult0|mult_core|romout[1][11]~16_combout\ & (!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\)) # (!\filter|Mult0|mult_core|romout[1][11]~16_combout\ & 
-- ((\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\) # (GND)))
-- \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\ = CARRY((!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\) # (!\filter|Mult0|mult_core|romout[1][11]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filter|Mult0|mult_core|romout[1][11]~16_combout\,
	datad => VCC,
	cin => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\,
	combout => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	cout => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\);

-- Location: LCCOMB_X17_Y25_N14
\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ = (\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & ((\filter|Mult0|mult_core|romout[2][7]~combout\ & 
-- (\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ & VCC)) # (!\filter|Mult0|mult_core|romout[2][7]~combout\ & (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)))) # 
-- (!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & ((\filter|Mult0|mult_core|romout[2][7]~combout\ & (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)) # (!\filter|Mult0|mult_core|romout[2][7]~combout\ 
-- & ((\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ = CARRY((\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & (!\filter|Mult0|mult_core|romout[2][7]~combout\ & 
-- !\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)) # (!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & ((!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # 
-- (!\filter|Mult0|mult_core|romout[2][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	datab => \filter|Mult0|mult_core|romout[2][7]~combout\,
	datad => VCC,
	cin => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\,
	combout => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	cout => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X17_Y16_N18
\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ = ((\filter|Mult4|mult_core|romout[2][8]~18_combout\ $ (\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ $ 
-- (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\)))) # (GND)
-- \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ = CARRY((\filter|Mult4|mult_core|romout[2][8]~18_combout\ & ((\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\) # 
-- (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\))) # (!\filter|Mult4|mult_core|romout[2][8]~18_combout\ & (\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ & 
-- !\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult4|mult_core|romout[2][8]~18_combout\,
	datab => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\,
	combout => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	cout => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X17_Y25_N16
\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ = ((\filter|Mult0|mult_core|romout[2][8]~combout\ $ (\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ $ 
-- (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\)))) # (GND)
-- \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ = CARRY((\filter|Mult0|mult_core|romout[2][8]~combout\ & ((\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\) # 
-- (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\))) # (!\filter|Mult0|mult_core|romout[2][8]~combout\ & (\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ & 
-- !\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult0|mult_core|romout[2][8]~combout\,
	datab => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\,
	combout => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	cout => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X17_Y16_N20
\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ = (\filter|Mult4|mult_core|romout[2][9]~combout\ & (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\)) # 
-- (!\filter|Mult4|mult_core|romout[2][9]~combout\ & ((\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\) # (GND)))
-- \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ = CARRY((!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\) # (!\filter|Mult4|mult_core|romout[2][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filter|Mult4|mult_core|romout[2][9]~combout\,
	datad => VCC,
	cin => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\,
	combout => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	cout => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\);

-- Location: LCCOMB_X18_Y19_N10
\filter|Add2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Add2~10_combout\ = (\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & (\filter|Add2~9\ & VCC)) # 
-- (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & (!\filter|Add2~9\)))) # (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & 
-- ((\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & (!\filter|Add2~9\)) # (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & ((\filter|Add2~9\) # (GND)))))
-- \filter|Add2~11\ = CARRY((\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & !\filter|Add2~9\)) # 
-- (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((!\filter|Add2~9\) # (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datab => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \filter|Add2~9\,
	combout => \filter|Add2~10_combout\,
	cout => \filter|Add2~11\);

-- Location: LCCOMB_X17_Y16_N22
\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ = (\filter|Mult4|mult_core|romout[2][10]~13_combout\ & (\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ $ (GND))) # 
-- (!\filter|Mult4|mult_core|romout[2][10]~13_combout\ & (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ & VCC))
-- \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\ = CARRY((\filter|Mult4|mult_core|romout[2][10]~13_combout\ & !\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filter|Mult4|mult_core|romout[2][10]~13_combout\,
	datad => VCC,
	cin => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\,
	combout => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\,
	cout => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\);

-- Location: LCCOMB_X18_Y19_N12
\filter|Add2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Add2~12_combout\ = ((\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ $ (\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ $ (!\filter|Add2~11\)))) # (GND)
-- \filter|Add2~13\ = CARRY((\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ & ((\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\) # (!\filter|Add2~11\))) # 
-- (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ & (\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & !\filter|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\,
	datab => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \filter|Add2~11\,
	combout => \filter|Add2~12_combout\,
	cout => \filter|Add2~13\);

-- Location: LCCOMB_X17_Y16_N24
\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ = (\filter|Mult4|mult_core|romout[2][11]~12_combout\ & (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\)) # 
-- (!\filter|Mult4|mult_core|romout[2][11]~12_combout\ & ((\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\) # (GND)))
-- \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\ = CARRY((!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\) # (!\filter|Mult4|mult_core|romout[2][11]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult4|mult_core|romout[2][11]~12_combout\,
	datad => VCC,
	cin => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\,
	combout => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\,
	cout => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\);

-- Location: LCCOMB_X18_Y19_N14
\filter|Add2~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Add2~14_combout\ = (\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ & ((\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ & (\filter|Add2~13\ & VCC)) # 
-- (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ & (!\filter|Add2~13\)))) # (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ & 
-- ((\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ & (!\filter|Add2~13\)) # (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ & ((\filter|Add2~13\) # (GND)))))
-- \filter|Add2~15\ = CARRY((\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ & (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ & !\filter|Add2~13\)) # 
-- (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ & ((!\filter|Add2~13\) # (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\,
	datab => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \filter|Add2~13\,
	combout => \filter|Add2~14_combout\,
	cout => \filter|Add2~15\);

-- Location: LCCOMB_X17_Y19_N26
\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ = (\filter|Mult2|mult_core|romout[2][12]~combout\ & (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\)) # 
-- (!\filter|Mult2|mult_core|romout[2][12]~combout\ & ((\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\) # (GND)))
-- \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\ = CARRY((!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\) # (!\filter|Mult2|mult_core|romout[2][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filter|Mult2|mult_core|romout[2][12]~combout\,
	datad => VCC,
	cin => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\,
	combout => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\,
	cout => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\);

-- Location: LCCOMB_X18_Y19_N16
\filter|Add2~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Add2~16_combout\ = ((\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ $ (\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ $ (!\filter|Add2~15\)))) # (GND)
-- \filter|Add2~17\ = CARRY((\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ & ((\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\) # (!\filter|Add2~15\))) # 
-- (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ & (\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ & !\filter|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\,
	datab => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \filter|Add2~15\,
	combout => \filter|Add2~16_combout\,
	cout => \filter|Add2~17\);

-- Location: LCCOMB_X15_Y22_N2
\filter|Mult2|mult_core|romout[0][12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[0][12]~combout\ = (\filter|Reg_delay_1|data_out\(3) & ((\filter|Reg_delay_1|data_out\(1) & (\filter|Reg_delay_1|data_out\(0) & \filter|Reg_delay_1|data_out\(2))) # (!\filter|Reg_delay_1|data_out\(1) & 
-- ((!\filter|Reg_delay_1|data_out\(2)))))) # (!\filter|Reg_delay_1|data_out\(3) & (\filter|Reg_delay_1|data_out\(2) & ((\filter|Reg_delay_1|data_out\(1)) # (\filter|Reg_delay_1|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(3),
	datab => \filter|Reg_delay_1|data_out\(1),
	datac => \filter|Reg_delay_1|data_out\(0),
	datad => \filter|Reg_delay_1|data_out\(2),
	combout => \filter|Mult2|mult_core|romout[0][12]~combout\);

-- Location: LCCOMB_X15_Y22_N28
\filter|Mult2|mult_core|romout[1][7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[1][7]~combout\ = (\filter|Reg_delay_1|data_out\(5) & (\filter|Reg_delay_1|data_out\(7) $ (((!\filter|Reg_delay_1|data_out\(4)) # (!\filter|Reg_delay_1|data_out\(6)))))) # (!\filter|Reg_delay_1|data_out\(5) & 
-- ((\filter|Reg_delay_1|data_out\(6) & ((\filter|Reg_delay_1|data_out\(4)) # (\filter|Reg_delay_1|data_out\(7)))) # (!\filter|Reg_delay_1|data_out\(6) & (\filter|Reg_delay_1|data_out\(4) & \filter|Reg_delay_1|data_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(6),
	datab => \filter|Reg_delay_1|data_out\(5),
	datac => \filter|Reg_delay_1|data_out\(4),
	datad => \filter|Reg_delay_1|data_out\(7),
	combout => \filter|Mult2|mult_core|romout[1][7]~combout\);

-- Location: LCCOMB_X15_Y22_N8
\filter|Mult2|mult_core|romout[0][10]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[0][10]~2_combout\ = (\filter|Reg_delay_1|data_out\(2) & (\filter|Reg_delay_1|data_out\(0) $ (((\filter|Reg_delay_1|data_out\(3)) # (!\filter|Reg_delay_1|data_out\(1)))))) # (!\filter|Reg_delay_1|data_out\(2) & 
-- ((\filter|Reg_delay_1|data_out\(0) & ((\filter|Reg_delay_1|data_out\(3)))) # (!\filter|Reg_delay_1|data_out\(0) & (\filter|Reg_delay_1|data_out\(1) & !\filter|Reg_delay_1|data_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(2),
	datab => \filter|Reg_delay_1|data_out\(1),
	datac => \filter|Reg_delay_1|data_out\(0),
	datad => \filter|Reg_delay_1|data_out\(3),
	combout => \filter|Mult2|mult_core|romout[0][10]~2_combout\);

-- Location: LCCOMB_X15_Y22_N10
\filter|Mult2|mult_core|romout[0][9]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[0][9]~3_combout\ = (\filter|Reg_delay_1|data_out\(1) & ((\filter|Reg_delay_1|data_out\(2) & ((!\filter|Reg_delay_1|data_out\(3)) # (!\filter|Reg_delay_1|data_out\(0)))) # (!\filter|Reg_delay_1|data_out\(2) & 
-- (!\filter|Reg_delay_1|data_out\(0) & !\filter|Reg_delay_1|data_out\(3))))) # (!\filter|Reg_delay_1|data_out\(1) & (\filter|Reg_delay_1|data_out\(3) $ (((!\filter|Reg_delay_1|data_out\(2) & \filter|Reg_delay_1|data_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(2),
	datab => \filter|Reg_delay_1|data_out\(1),
	datac => \filter|Reg_delay_1|data_out\(0),
	datad => \filter|Reg_delay_1|data_out\(3),
	combout => \filter|Mult2|mult_core|romout[0][9]~3_combout\);

-- Location: LCCOMB_X15_Y22_N4
\filter|Mult2|mult_core|romout[0][8]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[0][8]~4_combout\ = (\filter|Reg_delay_1|data_out\(2) & ((\filter|Reg_delay_1|data_out\(1) & ((\filter|Reg_delay_1|data_out\(0)) # (!\filter|Reg_delay_1|data_out\(3)))) # (!\filter|Reg_delay_1|data_out\(1) & 
-- (!\filter|Reg_delay_1|data_out\(0))))) # (!\filter|Reg_delay_1|data_out\(2) & (\filter|Reg_delay_1|data_out\(0) $ (((\filter|Reg_delay_1|data_out\(1) & \filter|Reg_delay_1|data_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(2),
	datab => \filter|Reg_delay_1|data_out\(1),
	datac => \filter|Reg_delay_1|data_out\(0),
	datad => \filter|Reg_delay_1|data_out\(3),
	combout => \filter|Mult2|mult_core|romout[0][8]~4_combout\);

-- Location: LCCOMB_X16_Y22_N0
\filter|Mult2|mult_core|romout[1][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[1][3]~combout\ = \filter|Reg_delay_1|data_out\(6) $ (((\filter|Reg_delay_1|data_out\(4)) # (\filter|Reg_delay_1|data_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filter|Reg_delay_1|data_out\(6),
	datac => \filter|Reg_delay_1|data_out\(4),
	datad => \filter|Reg_delay_1|data_out\(5),
	combout => \filter|Mult2|mult_core|romout[1][3]~combout\);

-- Location: LCCOMB_X15_Y22_N14
\filter|Mult2|mult_core|romout[0][6]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[0][6]~7_combout\ = (\filter|Reg_delay_1|data_out\(2) & ((\filter|Reg_delay_1|data_out\(1) & (!\filter|Reg_delay_1|data_out\(0))) # (!\filter|Reg_delay_1|data_out\(1) & (\filter|Reg_delay_1|data_out\(0) & 
-- \filter|Reg_delay_1|data_out\(3))))) # (!\filter|Reg_delay_1|data_out\(2) & (\filter|Reg_delay_1|data_out\(0) $ (((!\filter|Reg_delay_1|data_out\(1) & \filter|Reg_delay_1|data_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(2),
	datab => \filter|Reg_delay_1|data_out\(1),
	datac => \filter|Reg_delay_1|data_out\(0),
	datad => \filter|Reg_delay_1|data_out\(3),
	combout => \filter|Mult2|mult_core|romout[0][6]~7_combout\);

-- Location: LCCOMB_X16_Y13_N14
\filter|Mult4|mult_core|romout[0][12]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[0][12]~0_combout\ = (\filter|Reg_delay_2|data_out\(3) & ((\filter|Reg_delay_2|data_out\(1)) # (\filter|Reg_delay_2|data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filter|Reg_delay_2|data_out\(3),
	datac => \filter|Reg_delay_2|data_out\(1),
	datad => \filter|Reg_delay_2|data_out\(2),
	combout => \filter|Mult4|mult_core|romout[0][12]~0_combout\);

-- Location: LCCOMB_X16_Y13_N2
\filter|Mult4|mult_core|romout[0][11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[0][11]~combout\ = (\filter|Reg_delay_2|data_out\(1) & (\filter|Reg_delay_2|data_out\(2) & ((\filter|Reg_delay_2|data_out\(0)) # (!\filter|Reg_delay_2|data_out\(3))))) # (!\filter|Reg_delay_2|data_out\(1) & 
-- ((\filter|Reg_delay_2|data_out\(2) & (!\filter|Reg_delay_2|data_out\(3) & \filter|Reg_delay_2|data_out\(0))) # (!\filter|Reg_delay_2|data_out\(2) & (\filter|Reg_delay_2|data_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(1),
	datab => \filter|Reg_delay_2|data_out\(2),
	datac => \filter|Reg_delay_2|data_out\(3),
	datad => \filter|Reg_delay_2|data_out\(0),
	combout => \filter|Mult4|mult_core|romout[0][11]~combout\);

-- Location: LCCOMB_X16_Y13_N28
\filter|Mult3|mult_core|romout[0][13]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|romout[0][13]~0_combout\ = (\filter|Reg_delay_2|data_out\(1) & ((\filter|Reg_delay_2|data_out\(0) & (!\filter|Reg_delay_2|data_out\(3) & !\filter|Reg_delay_2|data_out\(2))) # (!\filter|Reg_delay_2|data_out\(0) & 
-- (\filter|Reg_delay_2|data_out\(3) & \filter|Reg_delay_2|data_out\(2))))) # (!\filter|Reg_delay_2|data_out\(1) & (\filter|Reg_delay_2|data_out\(3) $ (((!\filter|Reg_delay_2|data_out\(0) & \filter|Reg_delay_2|data_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(1),
	datab => \filter|Reg_delay_2|data_out\(0),
	datac => \filter|Reg_delay_2|data_out\(3),
	datad => \filter|Reg_delay_2|data_out\(2),
	combout => \filter|Mult3|mult_core|romout[0][13]~0_combout\);

-- Location: LCCOMB_X14_Y13_N2
\filter|Mult4|mult_core|romout[1][5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[1][5]~combout\ = (\filter|Reg_delay_2|data_out\(6) & ((\filter|Reg_delay_2|data_out\(4) & (!\filter|Reg_delay_2|data_out\(5) & \filter|Reg_delay_2|data_out\(7))) # (!\filter|Reg_delay_2|data_out\(4) & 
-- (\filter|Reg_delay_2|data_out\(5))))) # (!\filter|Reg_delay_2|data_out\(6) & (\filter|Reg_delay_2|data_out\(4) $ (((!\filter|Reg_delay_2|data_out\(5) & \filter|Reg_delay_2|data_out\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(6),
	datab => \filter|Reg_delay_2|data_out\(4),
	datac => \filter|Reg_delay_2|data_out\(5),
	datad => \filter|Reg_delay_2|data_out\(7),
	combout => \filter|Mult4|mult_core|romout[1][5]~combout\);

-- Location: LCCOMB_X16_Y13_N26
\filter|Mult4|mult_core|romout[0][8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[0][8]~combout\ = (\filter|Reg_delay_2|data_out\(1) & ((\filter|Reg_delay_2|data_out\(2) & ((!\filter|Reg_delay_2|data_out\(3)) # (!\filter|Reg_delay_2|data_out\(0)))) # (!\filter|Reg_delay_2|data_out\(2) & 
-- (!\filter|Reg_delay_2|data_out\(0) & !\filter|Reg_delay_2|data_out\(3))))) # (!\filter|Reg_delay_2|data_out\(1) & (\filter|Reg_delay_2|data_out\(3) $ (((!\filter|Reg_delay_2|data_out\(2) & \filter|Reg_delay_2|data_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(2),
	datab => \filter|Reg_delay_2|data_out\(0),
	datac => \filter|Reg_delay_2|data_out\(1),
	datad => \filter|Reg_delay_2|data_out\(3),
	combout => \filter|Mult4|mult_core|romout[0][8]~combout\);

-- Location: LCCOMB_X16_Y13_N24
\filter|Mult4|mult_core|romout[0][7]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[0][7]~3_combout\ = (\filter|Reg_delay_2|data_out\(1) & ((\filter|Reg_delay_2|data_out\(2) & ((\filter|Reg_delay_2|data_out\(0)) # (!\filter|Reg_delay_2|data_out\(3)))) # (!\filter|Reg_delay_2|data_out\(2) & 
-- (\filter|Reg_delay_2|data_out\(0) $ (\filter|Reg_delay_2|data_out\(3)))))) # (!\filter|Reg_delay_2|data_out\(1) & (\filter|Reg_delay_2|data_out\(2) $ ((\filter|Reg_delay_2|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(1),
	datab => \filter|Reg_delay_2|data_out\(2),
	datac => \filter|Reg_delay_2|data_out\(0),
	datad => \filter|Reg_delay_2|data_out\(3),
	combout => \filter|Mult4|mult_core|romout[0][7]~3_combout\);

-- Location: LCCOMB_X14_Y14_N16
\filter|Mult4|mult_core|romout[1][2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[1][2]~4_combout\ = \filter|Reg_delay_2|data_out\(6) $ (((\filter|Reg_delay_2|data_out\(4)) # (\filter|Reg_delay_2|data_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(6),
	datac => \filter|Reg_delay_2|data_out\(4),
	datad => \filter|Reg_delay_2|data_out\(5),
	combout => \filter|Mult4|mult_core|romout[1][2]~4_combout\);

-- Location: LCCOMB_X16_Y13_N22
\filter|Mult4|mult_core|romout[0][5]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[0][5]~6_combout\ = (\filter|Reg_delay_2|data_out\(1) & ((\filter|Reg_delay_2|data_out\(2) $ (\filter|Reg_delay_2|data_out\(0))))) # (!\filter|Reg_delay_2|data_out\(1) & ((\filter|Reg_delay_2|data_out\(3) & 
-- (\filter|Reg_delay_2|data_out\(2) $ (!\filter|Reg_delay_2|data_out\(0)))) # (!\filter|Reg_delay_2|data_out\(3) & (!\filter|Reg_delay_2|data_out\(2) & \filter|Reg_delay_2|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(1),
	datab => \filter|Reg_delay_2|data_out\(3),
	datac => \filter|Reg_delay_2|data_out\(2),
	datad => \filter|Reg_delay_2|data_out\(0),
	combout => \filter|Mult4|mult_core|romout[0][5]~6_combout\);

-- Location: LCCOMB_X16_Y16_N16
\filter|Mult4|mult_core|romout[2][4]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[2][4]~7_combout\ = (\filter|Reg_delay_2|data_out\(9) & (!\filter|Reg_delay_2|data_out\(11) & (\filter|Reg_delay_2|data_out\(8)))) # (!\filter|Reg_delay_2|data_out\(9) & ((\filter|Reg_delay_2|data_out\(11)) # 
-- ((!\filter|Reg_delay_2|data_out\(8) & \filter|Reg_delay_2|data_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(9),
	datab => \filter|Reg_delay_2|data_out\(11),
	datac => \filter|Reg_delay_2|data_out\(8),
	datad => \filter|Reg_delay_2|data_out\(10),
	combout => \filter|Mult4|mult_core|romout[2][4]~7_combout\);

-- Location: LCCOMB_X16_Y16_N10
\filter|Mult4|mult_core|romout[2][3]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[2][3]~8_combout\ = \filter|Reg_delay_2|data_out\(11) $ (((!\filter|Reg_delay_2|data_out\(8) & ((\filter|Reg_delay_2|data_out\(9)) # (\filter|Reg_delay_2|data_out\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(9),
	datab => \filter|Reg_delay_2|data_out\(11),
	datac => \filter|Reg_delay_2|data_out\(8),
	datad => \filter|Reg_delay_2|data_out\(10),
	combout => \filter|Mult4|mult_core|romout[2][3]~8_combout\);

-- Location: LCCOMB_X15_Y25_N0
\filter|Mult1|mult_core|romout[0][12]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|romout[0][12]~2_combout\ = (\filter|Reg_delay_1|data_out\(3) & ((\filter|Reg_delay_1|data_out\(2)) # ((\filter|Reg_delay_1|data_out\(1) & \filter|Reg_delay_1|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(3),
	datab => \filter|Reg_delay_1|data_out\(1),
	datac => \filter|Reg_delay_1|data_out\(0),
	datad => \filter|Reg_delay_1|data_out\(2),
	combout => \filter|Mult1|mult_core|romout[0][12]~2_combout\);

-- Location: LCCOMB_X15_Y24_N4
\filter|Mult1|mult_core|romout[1][7]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|romout[1][7]~3_combout\ = \filter|Reg_delay_1|data_out\(7) $ (\filter|Reg_delay_1|data_out\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filter|Reg_delay_1|data_out\(7),
	datad => \filter|Reg_delay_1|data_out\(4),
	combout => \filter|Mult1|mult_core|romout[1][7]~3_combout\);

-- Location: LCCOMB_X14_Y24_N0
\filter|Mult1|mult_core|romout[0][9]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|romout[0][9]~5_combout\ = \filter|Reg_delay_1|data_out\(2) $ (((\filter|Reg_delay_1|data_out\(0) & (\filter|Reg_delay_1|data_out\(3) & !\filter|Reg_delay_1|data_out\(1))) # (!\filter|Reg_delay_1|data_out\(0) & 
-- ((\filter|Reg_delay_1|data_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(3),
	datab => \filter|Reg_delay_1|data_out\(0),
	datac => \filter|Reg_delay_1|data_out\(2),
	datad => \filter|Reg_delay_1|data_out\(1),
	combout => \filter|Mult1|mult_core|romout[0][9]~5_combout\);

-- Location: LCCOMB_X14_Y24_N30
\filter|Mult1|mult_core|romout[0][7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|romout[0][7]~7_combout\ = \filter|Reg_delay_1|data_out\(3) $ (\filter|Reg_delay_1|data_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \filter|Reg_delay_1|data_out\(3),
	datad => \filter|Reg_delay_1|data_out\(0),
	combout => \filter|Mult1|mult_core|romout[0][7]~7_combout\);

-- Location: LCCOMB_X16_Y24_N8
\filter|Mult1|mult_core|romout[2][8]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|romout[2][8]~8_combout\ = \filter|Reg_delay_1|data_out\(9) $ (((\filter|Reg_delay_1|data_out\(8) & !\filter|Reg_delay_1|data_out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(9),
	datab => \filter|Reg_delay_1|data_out\(8),
	datad => \filter|Reg_delay_1|data_out\(11),
	combout => \filter|Mult1|mult_core|romout[2][8]~8_combout\);

-- Location: LCCOMB_X14_Y13_N4
\filter|Mult4|mult_core|romout[1][11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[1][11]~combout\ = (\filter|Reg_delay_2|data_out\(5) & (\filter|Reg_delay_2|data_out\(6) & ((\filter|Reg_delay_2|data_out\(4)) # (!\filter|Reg_delay_2|data_out\(7))))) # (!\filter|Reg_delay_2|data_out\(5) & 
-- ((\filter|Reg_delay_2|data_out\(6) & (\filter|Reg_delay_2|data_out\(4) & !\filter|Reg_delay_2|data_out\(7))) # (!\filter|Reg_delay_2|data_out\(6) & ((\filter|Reg_delay_2|data_out\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(4),
	datab => \filter|Reg_delay_2|data_out\(5),
	datac => \filter|Reg_delay_2|data_out\(6),
	datad => \filter|Reg_delay_2|data_out\(7),
	combout => \filter|Mult4|mult_core|romout[1][11]~combout\);

-- Location: LCCOMB_X14_Y13_N24
\filter|Mult3|mult_core|romout[1][12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|romout[1][12]~combout\ = (\filter|Reg_delay_2|data_out\(4) & ((\filter|Reg_delay_2|data_out\(7) & (!\filter|Reg_delay_2|data_out\(6) & !\filter|Reg_delay_2|data_out\(5))) # (!\filter|Reg_delay_2|data_out\(7) & 
-- (\filter|Reg_delay_2|data_out\(6) & \filter|Reg_delay_2|data_out\(5))))) # (!\filter|Reg_delay_2|data_out\(4) & (\filter|Reg_delay_2|data_out\(6) $ (((!\filter|Reg_delay_2|data_out\(7) & \filter|Reg_delay_2|data_out\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(4),
	datab => \filter|Reg_delay_2|data_out\(7),
	datac => \filter|Reg_delay_2|data_out\(6),
	datad => \filter|Reg_delay_2|data_out\(5),
	combout => \filter|Mult3|mult_core|romout[1][12]~combout\);

-- Location: LCCOMB_X16_Y13_N4
\filter|Mult3|mult_core|romout[0][11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|romout[0][11]~combout\ = \filter|Reg_delay_2|data_out\(1) $ (\filter|Reg_delay_2|data_out\(3) $ (((\filter|Reg_delay_2|data_out\(0) & !\filter|Reg_delay_2|data_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(1),
	datab => \filter|Reg_delay_2|data_out\(0),
	datac => \filter|Reg_delay_2|data_out\(3),
	datad => \filter|Reg_delay_2|data_out\(2),
	combout => \filter|Mult3|mult_core|romout[0][11]~combout\);

-- Location: LCCOMB_X16_Y13_N30
\filter|Mult3|mult_core|romout[0][10]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|romout[0][10]~3_combout\ = \filter|Reg_delay_2|data_out\(2) $ (\filter|Reg_delay_2|data_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \filter|Reg_delay_2|data_out\(2),
	datad => \filter|Reg_delay_2|data_out\(0),
	combout => \filter|Mult3|mult_core|romout[0][10]~3_combout\);

-- Location: LCCOMB_X14_Y13_N0
\filter|Mult3|mult_core|romout[1][5]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|romout[1][5]~4_combout\ = (\filter|Reg_delay_2|data_out\(5) & ((\filter|Reg_delay_2|data_out\(7) & ((\filter|Reg_delay_2|data_out\(4)) # (!\filter|Reg_delay_2|data_out\(6)))) # (!\filter|Reg_delay_2|data_out\(7) & 
-- (!\filter|Reg_delay_2|data_out\(6) & \filter|Reg_delay_2|data_out\(4))))) # (!\filter|Reg_delay_2|data_out\(5) & ((\filter|Reg_delay_2|data_out\(7) & (!\filter|Reg_delay_2|data_out\(6) & \filter|Reg_delay_2|data_out\(4))) # 
-- (!\filter|Reg_delay_2|data_out\(7) & (\filter|Reg_delay_2|data_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(5),
	datab => \filter|Reg_delay_2|data_out\(7),
	datac => \filter|Reg_delay_2|data_out\(6),
	datad => \filter|Reg_delay_2|data_out\(4),
	combout => \filter|Mult3|mult_core|romout[1][5]~4_combout\);

-- Location: LCCOMB_X14_Y13_N10
\filter|Mult3|mult_core|romout[1][4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|romout[1][4]~combout\ = (\filter|Reg_delay_2|data_out\(4) & ((\filter|Reg_delay_2|data_out\(7) & (!\filter|Reg_delay_2|data_out\(6) & \filter|Reg_delay_2|data_out\(5))) # (!\filter|Reg_delay_2|data_out\(7) & 
-- (\filter|Reg_delay_2|data_out\(6) & !\filter|Reg_delay_2|data_out\(5))))) # (!\filter|Reg_delay_2|data_out\(4) & ((\filter|Reg_delay_2|data_out\(7) & (\filter|Reg_delay_2|data_out\(6) $ (!\filter|Reg_delay_2|data_out\(5)))) # 
-- (!\filter|Reg_delay_2|data_out\(7) & (!\filter|Reg_delay_2|data_out\(6) & \filter|Reg_delay_2|data_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(4),
	datab => \filter|Reg_delay_2|data_out\(7),
	datac => \filter|Reg_delay_2|data_out\(6),
	datad => \filter|Reg_delay_2|data_out\(5),
	combout => \filter|Mult3|mult_core|romout[1][4]~combout\);

-- Location: LCCOMB_X14_Y13_N12
\filter|Mult3|mult_core|romout[1][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|romout[1][3]~combout\ = \filter|Reg_delay_2|data_out\(7) $ (((\filter|Reg_delay_2|data_out\(4) & (\filter|Reg_delay_2|data_out\(5) $ (!\filter|Reg_delay_2|data_out\(6)))) # (!\filter|Reg_delay_2|data_out\(4) & 
-- (!\filter|Reg_delay_2|data_out\(5) & \filter|Reg_delay_2|data_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(4),
	datab => \filter|Reg_delay_2|data_out\(5),
	datac => \filter|Reg_delay_2|data_out\(6),
	datad => \filter|Reg_delay_2|data_out\(7),
	combout => \filter|Mult3|mult_core|romout[1][3]~combout\);

-- Location: LCCOMB_X14_Y13_N14
\filter|Mult3|mult_core|romout[1][2]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|romout[1][2]~6_combout\ = \filter|Reg_delay_2|data_out\(6) $ (((!\filter|Reg_delay_2|data_out\(4) & \filter|Reg_delay_2|data_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(4),
	datac => \filter|Reg_delay_2|data_out\(6),
	datad => \filter|Reg_delay_2|data_out\(5),
	combout => \filter|Mult3|mult_core|romout[1][2]~6_combout\);

-- Location: LCCOMB_X16_Y13_N6
\filter|Mult3|mult_core|romout[0][4]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|romout[0][4]~9_combout\ = (\filter|Reg_delay_2|data_out\(1) & ((\filter|Reg_delay_2|data_out\(2) & (\filter|Reg_delay_2|data_out\(3) & !\filter|Reg_delay_2|data_out\(0))) # (!\filter|Reg_delay_2|data_out\(2) & 
-- (\filter|Reg_delay_2|data_out\(3) $ (!\filter|Reg_delay_2|data_out\(0)))))) # (!\filter|Reg_delay_2|data_out\(1) & ((\filter|Reg_delay_2|data_out\(2) & (!\filter|Reg_delay_2|data_out\(3) & \filter|Reg_delay_2|data_out\(0))) # 
-- (!\filter|Reg_delay_2|data_out\(2) & (\filter|Reg_delay_2|data_out\(3) & !\filter|Reg_delay_2|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(1),
	datab => \filter|Reg_delay_2|data_out\(2),
	datac => \filter|Reg_delay_2|data_out\(3),
	datad => \filter|Reg_delay_2|data_out\(0),
	combout => \filter|Mult3|mult_core|romout[0][4]~9_combout\);

-- Location: LCCOMB_X16_Y16_N4
\filter|Mult4|mult_core|_~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|_~1_combout\ = (\filter|Reg_delay_2|data_out\(11) & \filter|Reg_delay_2|data_out\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \filter|Reg_delay_2|data_out\(11),
	datad => \filter|Reg_delay_2|data_out\(10),
	combout => \filter|Mult4|mult_core|_~1_combout\);

-- Location: LCCOMB_X16_Y16_N14
\filter|Mult3|mult_core|romout[2][6]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|romout[2][6]~11_combout\ = (\filter|Reg_delay_2|data_out\(11) & ((!\filter|Reg_delay_2|data_out\(10)))) # (!\filter|Reg_delay_2|data_out\(11) & (\filter|Reg_delay_2|data_out\(9) & \filter|Reg_delay_2|data_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(9),
	datac => \filter|Reg_delay_2|data_out\(11),
	datad => \filter|Reg_delay_2|data_out\(10),
	combout => \filter|Mult3|mult_core|romout[2][6]~11_combout\);

-- Location: LCCOMB_X16_Y16_N18
\filter|Mult3|mult_core|romout[2][4]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|romout[2][4]~12_combout\ = (\filter|Reg_delay_2|data_out\(8) & ((\filter|Reg_delay_2|data_out\(10) & (!\filter|Reg_delay_2|data_out\(11) & !\filter|Reg_delay_2|data_out\(9))) # (!\filter|Reg_delay_2|data_out\(10) & 
-- (\filter|Reg_delay_2|data_out\(11) & \filter|Reg_delay_2|data_out\(9))))) # (!\filter|Reg_delay_2|data_out\(8) & ((\filter|Reg_delay_2|data_out\(10) & (\filter|Reg_delay_2|data_out\(11) & \filter|Reg_delay_2|data_out\(9))) # 
-- (!\filter|Reg_delay_2|data_out\(10) & (\filter|Reg_delay_2|data_out\(11) $ (\filter|Reg_delay_2|data_out\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(8),
	datab => \filter|Reg_delay_2|data_out\(10),
	datac => \filter|Reg_delay_2|data_out\(11),
	datad => \filter|Reg_delay_2|data_out\(9),
	combout => \filter|Mult3|mult_core|romout[2][4]~12_combout\);

-- Location: LCCOMB_X16_Y16_N20
\filter|Mult3|mult_core|romout[2][3]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|romout[2][3]~13_combout\ = \filter|Reg_delay_2|data_out\(11) $ (((\filter|Reg_delay_2|data_out\(8) & (\filter|Reg_delay_2|data_out\(10) $ (!\filter|Reg_delay_2|data_out\(9)))) # (!\filter|Reg_delay_2|data_out\(8) & 
-- (\filter|Reg_delay_2|data_out\(10) & !\filter|Reg_delay_2|data_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(8),
	datab => \filter|Reg_delay_2|data_out\(10),
	datac => \filter|Reg_delay_2|data_out\(11),
	datad => \filter|Reg_delay_2|data_out\(9),
	combout => \filter|Mult3|mult_core|romout[2][3]~13_combout\);

-- Location: LCCOMB_X16_Y16_N6
\filter|Mult3|mult_core|romout[2][2]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|romout[2][2]~14_combout\ = \filter|Reg_delay_2|data_out\(10) $ (((!\filter|Reg_delay_2|data_out\(8) & \filter|Reg_delay_2|data_out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filter|Reg_delay_2|data_out\(10),
	datac => \filter|Reg_delay_2|data_out\(8),
	datad => \filter|Reg_delay_2|data_out\(9),
	combout => \filter|Mult3|mult_core|romout[2][2]~14_combout\);

-- Location: FF_X17_Y23_N3
\filter|Reg_in|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_in|data_out~6_combout\,
	ena => \filter|Reg_in|data_out[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_in|data_out\(1));

-- Location: FF_X17_Y23_N5
\filter|Reg_in|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_in|data_out~7_combout\,
	ena => \filter|Reg_in|data_out[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_in|data_out\(0));

-- Location: FF_X17_Y23_N23
\filter|Reg_in|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_in|data_out~8_combout\,
	ena => \filter|Reg_in|data_out[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_in|data_out\(7));

-- Location: LCCOMB_X14_Y23_N30
\filter|Mult1|mult_core|romout[2][11]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|romout[2][11]~10_combout\ = (\filter|Reg_delay_1|data_out\(11) & (!\filter|Reg_delay_1|data_out\(10) & ((!\filter|Reg_delay_1|data_out\(9)) # (!\filter|Reg_delay_1|data_out\(8))))) # (!\filter|Reg_delay_1|data_out\(11) & 
-- (\filter|Reg_delay_1|data_out\(10) & ((\filter|Reg_delay_1|data_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(11),
	datab => \filter|Reg_delay_1|data_out\(10),
	datac => \filter|Reg_delay_1|data_out\(8),
	datad => \filter|Reg_delay_1|data_out\(9),
	combout => \filter|Mult1|mult_core|romout[2][11]~10_combout\);

-- Location: LCCOMB_X15_Y24_N6
\filter|Mult0|mult_core|romout[1][8]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[1][8]~0_combout\ = (\filter|v[5]~10_combout\ & ((\filter|v[4]~8_combout\ & (!\filter|v[7]~14_combout\ & \filter|v[6]~12_combout\)) # (!\filter|v[4]~8_combout\ & ((\filter|v[6]~12_combout\) # (!\filter|v[7]~14_combout\))))) # 
-- (!\filter|v[5]~10_combout\ & (\filter|v[7]~14_combout\ $ (((\filter|v[4]~8_combout\ & !\filter|v[6]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[5]~10_combout\,
	datab => \filter|v[4]~8_combout\,
	datac => \filter|v[7]~14_combout\,
	datad => \filter|v[6]~12_combout\,
	combout => \filter|Mult0|mult_core|romout[1][8]~0_combout\);

-- Location: LCCOMB_X16_Y23_N0
\filter|Mult0|mult_core|romout[1][7]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[1][7]~2_combout\ = (\filter|v[7]~14_combout\ & (\filter|v[5]~10_combout\ $ (\filter|v[4]~8_combout\ $ (\filter|v[6]~12_combout\)))) # (!\filter|v[7]~14_combout\ & ((\filter|v[4]~8_combout\ & ((\filter|v[5]~10_combout\) # 
-- (!\filter|v[6]~12_combout\))) # (!\filter|v[4]~8_combout\ & ((\filter|v[6]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[7]~14_combout\,
	datab => \filter|v[5]~10_combout\,
	datac => \filter|v[4]~8_combout\,
	datad => \filter|v[6]~12_combout\,
	combout => \filter|Mult0|mult_core|romout[1][7]~2_combout\);

-- Location: LCCOMB_X15_Y25_N26
\filter|Mult0|mult_core|romout[0][10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[0][10]~combout\ = (\filter|v[1]~2_combout\ & ((\filter|v[0]~0_combout\ & (!\filter|v[2]~4_combout\ & !\filter|v[3]~6_combout\)) # (!\filter|v[0]~0_combout\ & (\filter|v[2]~4_combout\ & \filter|v[3]~6_combout\)))) # 
-- (!\filter|v[1]~2_combout\ & (\filter|v[3]~6_combout\ $ (((!\filter|v[0]~0_combout\ & \filter|v[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[0]~0_combout\,
	datab => \filter|v[1]~2_combout\,
	datac => \filter|v[2]~4_combout\,
	datad => \filter|v[3]~6_combout\,
	combout => \filter|Mult0|mult_core|romout[0][10]~combout\);

-- Location: LCCOMB_X16_Y25_N0
\filter|Mult0|mult_core|romout[1][5]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[1][5]~4_combout\ = (\filter|v[5]~10_combout\ & ((\filter|v[4]~8_combout\ $ (\filter|v[6]~12_combout\)))) # (!\filter|v[5]~10_combout\ & ((\filter|v[7]~14_combout\ & (\filter|v[4]~8_combout\ $ (!\filter|v[6]~12_combout\))) # 
-- (!\filter|v[7]~14_combout\ & (\filter|v[4]~8_combout\ & !\filter|v[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[5]~10_combout\,
	datab => \filter|v[7]~14_combout\,
	datac => \filter|v[4]~8_combout\,
	datad => \filter|v[6]~12_combout\,
	combout => \filter|Mult0|mult_core|romout[1][5]~4_combout\);

-- Location: LCCOMB_X15_Y25_N14
\filter|Mult0|mult_core|romout[0][8]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[0][8]~6_combout\ = (\filter|v[1]~2_combout\ & ((\filter|v[0]~0_combout\ & (\filter|v[2]~4_combout\ & !\filter|v[3]~6_combout\)) # (!\filter|v[0]~0_combout\ & ((\filter|v[2]~4_combout\) # (!\filter|v[3]~6_combout\))))) # 
-- (!\filter|v[1]~2_combout\ & (\filter|v[3]~6_combout\ $ (((\filter|v[0]~0_combout\ & !\filter|v[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[0]~0_combout\,
	datab => \filter|v[1]~2_combout\,
	datac => \filter|v[2]~4_combout\,
	datad => \filter|v[3]~6_combout\,
	combout => \filter|Mult0|mult_core|romout[0][8]~6_combout\);

-- Location: LCCOMB_X15_Y25_N16
\filter|Mult0|mult_core|romout[0][7]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[0][7]~8_combout\ = (\filter|v[0]~0_combout\ & ((\filter|v[1]~2_combout\ & ((\filter|v[2]~4_combout\) # (!\filter|v[3]~6_combout\))) # (!\filter|v[1]~2_combout\ & (!\filter|v[2]~4_combout\)))) # (!\filter|v[0]~0_combout\ & 
-- (\filter|v[2]~4_combout\ $ (((\filter|v[1]~2_combout\ & \filter|v[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[0]~0_combout\,
	datab => \filter|v[1]~2_combout\,
	datac => \filter|v[2]~4_combout\,
	datad => \filter|v[3]~6_combout\,
	combout => \filter|Mult0|mult_core|romout[0][7]~8_combout\);

-- Location: LCCOMB_X16_Y23_N4
\filter|Mult0|mult_core|romout[1][2]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[1][2]~9_combout\ = \filter|v[6]~12_combout\ $ (((\filter|v[5]~10_combout\) # (\filter|v[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filter|v[5]~10_combout\,
	datac => \filter|v[4]~8_combout\,
	datad => \filter|v[6]~12_combout\,
	combout => \filter|Mult0|mult_core|romout[1][2]~9_combout\);

-- Location: LCCOMB_X15_Y25_N12
\filter|Mult0|mult_core|romout[0][5]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[0][5]~11_combout\ = (\filter|v[0]~0_combout\ & (\filter|v[2]~4_combout\ $ (((\filter|v[1]~2_combout\) # (!\filter|v[3]~6_combout\))))) # (!\filter|v[0]~0_combout\ & ((\filter|v[1]~2_combout\ & (\filter|v[2]~4_combout\)) # 
-- (!\filter|v[1]~2_combout\ & (!\filter|v[2]~4_combout\ & \filter|v[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[0]~0_combout\,
	datab => \filter|v[1]~2_combout\,
	datac => \filter|v[2]~4_combout\,
	datad => \filter|v[3]~6_combout\,
	combout => \filter|Mult0|mult_core|romout[0][5]~11_combout\);

-- Location: FF_X17_Y23_N17
\filter|Reg_in|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_in|data_out~9_combout\,
	ena => \filter|Reg_in|data_out[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_in|data_out\(8));

-- Location: LCCOMB_X16_Y16_N2
\filter|Mult3|mult_core|romout[2][12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|romout[2][12]~combout\ = (\filter|Reg_delay_2|data_out\(8) & ((\filter|Reg_delay_2|data_out\(9) & (!\filter|Reg_delay_2|data_out\(11) & \filter|Reg_delay_2|data_out\(10))) # (!\filter|Reg_delay_2|data_out\(9) & 
-- (\filter|Reg_delay_2|data_out\(11) & !\filter|Reg_delay_2|data_out\(10))))) # (!\filter|Reg_delay_2|data_out\(8) & (\filter|Reg_delay_2|data_out\(10) $ (((\filter|Reg_delay_2|data_out\(9) & !\filter|Reg_delay_2|data_out\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(9),
	datab => \filter|Reg_delay_2|data_out\(11),
	datac => \filter|Reg_delay_2|data_out\(8),
	datad => \filter|Reg_delay_2|data_out\(10),
	combout => \filter|Mult3|mult_core|romout[2][12]~combout\);

-- Location: FF_X17_Y23_N11
\filter|Reg_in|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_in|data_out~10_combout\,
	ena => \filter|Reg_in|data_out[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_in|data_out\(10));

-- Location: LCCOMB_X16_Y16_N12
\filter|Mult4|mult_core|romout[2][11]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[2][11]~12_combout\ = (\filter|Reg_delay_2|data_out\(9) & (\filter|Reg_delay_2|data_out\(10) & ((\filter|Reg_delay_2|data_out\(8)) # (!\filter|Reg_delay_2|data_out\(11))))) # (!\filter|Reg_delay_2|data_out\(9) & 
-- ((\filter|Reg_delay_2|data_out\(11) & ((!\filter|Reg_delay_2|data_out\(10)))) # (!\filter|Reg_delay_2|data_out\(11) & (\filter|Reg_delay_2|data_out\(8) & \filter|Reg_delay_2|data_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(9),
	datab => \filter|Reg_delay_2|data_out\(11),
	datac => \filter|Reg_delay_2|data_out\(8),
	datad => \filter|Reg_delay_2|data_out\(10),
	combout => \filter|Mult4|mult_core|romout[2][11]~12_combout\);

-- Location: FF_X17_Y23_N21
\filter|Reg_in|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_in|data_out~11_combout\,
	ena => \filter|Reg_in|data_out[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_in|data_out\(9));

-- Location: LCCOMB_X17_Y25_N26
\filter|Mult0|mult_core|romout[2][4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[2][4]~combout\ = (\filter|v[8]~16_combout\ & (\filter|v[9]~18_combout\ $ ((\filter|v[11]~22_combout\)))) # (!\filter|v[8]~16_combout\ & (!\filter|v[9]~18_combout\ & ((\filter|v[11]~22_combout\) # 
-- (\filter|v[10]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[8]~16_combout\,
	datab => \filter|v[9]~18_combout\,
	datac => \filter|v[11]~22_combout\,
	datad => \filter|v[10]~20_combout\,
	combout => \filter|Mult0|mult_core|romout[2][4]~combout\);

-- Location: LCCOMB_X17_Y25_N28
\filter|Mult0|mult_core|romout[2][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[2][3]~combout\ = \filter|v[11]~22_combout\ $ (((!\filter|v[8]~16_combout\ & ((\filter|v[9]~18_combout\) # (\filter|v[10]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[8]~16_combout\,
	datab => \filter|v[9]~18_combout\,
	datac => \filter|v[11]~22_combout\,
	datad => \filter|v[10]~20_combout\,
	combout => \filter|Mult0|mult_core|romout[2][3]~combout\);

-- Location: LCCOMB_X15_Y22_N12
\filter|Mult2|mult_core|romout[0][13]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[0][13]~9_combout\ = (\filter|Reg_delay_1|data_out\(3) & ((\filter|Reg_delay_1|data_out\(1)) # (\filter|Reg_delay_1|data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filter|Reg_delay_1|data_out\(1),
	datac => \filter|Reg_delay_1|data_out\(3),
	datad => \filter|Reg_delay_1|data_out\(2),
	combout => \filter|Mult2|mult_core|romout[0][13]~9_combout\);

-- Location: LCCOMB_X18_Y16_N30
\filter|Mult2|mult_core|romout[2][5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[2][5]~combout\ = (\filter|Reg_delay_1|data_out\(8) & (\filter|Reg_delay_1|data_out\(11) $ ((\filter|Reg_delay_1|data_out\(9))))) # (!\filter|Reg_delay_1|data_out\(8) & (!\filter|Reg_delay_1|data_out\(9) & 
-- ((\filter|Reg_delay_1|data_out\(11)) # (\filter|Reg_delay_1|data_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(8),
	datab => \filter|Reg_delay_1|data_out\(11),
	datac => \filter|Reg_delay_1|data_out\(9),
	datad => \filter|Reg_delay_1|data_out\(10),
	combout => \filter|Mult2|mult_core|romout[2][5]~combout\);

-- Location: LCCOMB_X16_Y16_N26
\filter|Mult4|mult_core|romout[2][5]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[2][5]~15_combout\ = (\filter|Reg_delay_2|data_out\(9) & ((\filter|Reg_delay_2|data_out\(8) $ (\filter|Reg_delay_2|data_out\(10))))) # (!\filter|Reg_delay_2|data_out\(9) & ((\filter|Reg_delay_2|data_out\(11) & 
-- (\filter|Reg_delay_2|data_out\(8) $ (!\filter|Reg_delay_2|data_out\(10)))) # (!\filter|Reg_delay_2|data_out\(11) & (\filter|Reg_delay_2|data_out\(8) & !\filter|Reg_delay_2|data_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(9),
	datab => \filter|Reg_delay_2|data_out\(11),
	datac => \filter|Reg_delay_2|data_out\(8),
	datad => \filter|Reg_delay_2|data_out\(10),
	combout => \filter|Mult4|mult_core|romout[2][5]~15_combout\);

-- Location: LCCOMB_X15_Y24_N0
\filter|Mult0|mult_core|romout[1][9]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[1][9]~13_combout\ = (\filter|v[4]~8_combout\ & ((\filter|v[7]~14_combout\ & ((!\filter|v[6]~12_combout\))) # (!\filter|v[7]~14_combout\ & (\filter|v[5]~10_combout\ & \filter|v[6]~12_combout\)))) # (!\filter|v[4]~8_combout\ & 
-- (\filter|v[6]~12_combout\ $ (((\filter|v[5]~10_combout\ & !\filter|v[7]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[4]~8_combout\,
	datab => \filter|v[5]~10_combout\,
	datac => \filter|v[7]~14_combout\,
	datad => \filter|v[6]~12_combout\,
	combout => \filter|Mult0|mult_core|romout[1][9]~13_combout\);

-- Location: LCCOMB_X17_Y25_N30
\filter|Mult0|mult_core|romout[2][5]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[2][5]~14_combout\ = (\filter|v[8]~16_combout\ & (\filter|v[10]~20_combout\ $ (((\filter|v[9]~18_combout\) # (!\filter|v[11]~22_combout\))))) # (!\filter|v[8]~16_combout\ & ((\filter|v[9]~18_combout\ & 
-- ((\filter|v[10]~20_combout\))) # (!\filter|v[9]~18_combout\ & (\filter|v[11]~22_combout\ & !\filter|v[10]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[8]~16_combout\,
	datab => \filter|v[9]~18_combout\,
	datac => \filter|v[11]~22_combout\,
	datad => \filter|v[10]~20_combout\,
	combout => \filter|Mult0|mult_core|romout[2][5]~14_combout\);

-- Location: LCCOMB_X16_Y22_N30
\filter|Mult2|mult_core|romout[1][10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[1][10]~combout\ = (\filter|Reg_delay_1|data_out\(5) & (\filter|Reg_delay_1|data_out\(6) $ (\filter|Reg_delay_1|data_out\(4) $ (!\filter|Reg_delay_1|data_out\(7))))) # (!\filter|Reg_delay_1|data_out\(5) & 
-- ((\filter|Reg_delay_1|data_out\(6) & (!\filter|Reg_delay_1|data_out\(4))) # (!\filter|Reg_delay_1|data_out\(6) & (\filter|Reg_delay_1|data_out\(4) & \filter|Reg_delay_1|data_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(5),
	datab => \filter|Reg_delay_1|data_out\(6),
	datac => \filter|Reg_delay_1|data_out\(4),
	datad => \filter|Reg_delay_1|data_out\(7),
	combout => \filter|Mult2|mult_core|romout[1][10]~combout\);

-- Location: LCCOMB_X16_Y16_N28
\filter|Mult4|mult_core|romout[2][6]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[2][6]~16_combout\ = (\filter|Reg_delay_2|data_out\(9) & (\filter|Reg_delay_2|data_out\(11) $ (((!\filter|Reg_delay_2|data_out\(10)) # (!\filter|Reg_delay_2|data_out\(8)))))) # (!\filter|Reg_delay_2|data_out\(9) & 
-- ((\filter|Reg_delay_2|data_out\(11) & ((\filter|Reg_delay_2|data_out\(8)) # (\filter|Reg_delay_2|data_out\(10)))) # (!\filter|Reg_delay_2|data_out\(11) & (\filter|Reg_delay_2|data_out\(8) & \filter|Reg_delay_2|data_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(9),
	datab => \filter|Reg_delay_2|data_out\(11),
	datac => \filter|Reg_delay_2|data_out\(8),
	datad => \filter|Reg_delay_2|data_out\(10),
	combout => \filter|Mult4|mult_core|romout[2][6]~16_combout\);

-- Location: LCCOMB_X15_Y24_N26
\filter|Mult0|mult_core|romout[1][10]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[1][10]~15_combout\ = (\filter|v[5]~10_combout\ & ((\filter|v[4]~8_combout\ & (!\filter|v[7]~14_combout\ & !\filter|v[6]~12_combout\)) # (!\filter|v[4]~8_combout\ & (\filter|v[7]~14_combout\ & \filter|v[6]~12_combout\)))) # 
-- (!\filter|v[5]~10_combout\ & (\filter|v[7]~14_combout\ $ (((!\filter|v[4]~8_combout\ & \filter|v[6]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[4]~8_combout\,
	datab => \filter|v[5]~10_combout\,
	datac => \filter|v[7]~14_combout\,
	datad => \filter|v[6]~12_combout\,
	combout => \filter|Mult0|mult_core|romout[1][10]~15_combout\);

-- Location: LCCOMB_X16_Y24_N2
\filter|Mult0|mult_core|romout[2][6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[2][6]~combout\ = (\filter|v[9]~18_combout\ & (\filter|v[11]~22_combout\ $ (((!\filter|v[10]~20_combout\) # (!\filter|v[8]~16_combout\))))) # (!\filter|v[9]~18_combout\ & ((\filter|v[8]~16_combout\ & 
-- ((\filter|v[10]~20_combout\) # (\filter|v[11]~22_combout\))) # (!\filter|v[8]~16_combout\ & (\filter|v[10]~20_combout\ & \filter|v[11]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[8]~16_combout\,
	datab => \filter|v[10]~20_combout\,
	datac => \filter|v[9]~18_combout\,
	datad => \filter|v[11]~22_combout\,
	combout => \filter|Mult0|mult_core|romout[2][6]~combout\);

-- Location: LCCOMB_X17_Y24_N2
\filter|Mult2|mult_core|romout[1][11]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[1][11]~11_combout\ = (\filter|Reg_delay_1|data_out\(5) & ((\filter|Reg_delay_1|data_out\(4) & ((\filter|Reg_delay_1|data_out\(6)) # (\filter|Reg_delay_1|data_out\(7)))) # (!\filter|Reg_delay_1|data_out\(4) & 
-- ((!\filter|Reg_delay_1|data_out\(7)) # (!\filter|Reg_delay_1|data_out\(6)))))) # (!\filter|Reg_delay_1|data_out\(5) & (\filter|Reg_delay_1|data_out\(7) $ (((\filter|Reg_delay_1|data_out\(4)) # (!\filter|Reg_delay_1|data_out\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(4),
	datab => \filter|Reg_delay_1|data_out\(6),
	datac => \filter|Reg_delay_1|data_out\(5),
	datad => \filter|Reg_delay_1|data_out\(7),
	combout => \filter|Mult2|mult_core|romout[1][11]~11_combout\);

-- Location: LCCOMB_X18_Y16_N4
\filter|Mult2|mult_core|romout[2][8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[2][8]~combout\ = (\filter|Reg_delay_1|data_out\(8) & ((\filter|Reg_delay_1|data_out\(9) & ((\filter|Reg_delay_1|data_out\(10)) # (!\filter|Reg_delay_1|data_out\(11)))) # (!\filter|Reg_delay_1|data_out\(9) & 
-- ((!\filter|Reg_delay_1|data_out\(10)))))) # (!\filter|Reg_delay_1|data_out\(8) & (\filter|Reg_delay_1|data_out\(10) $ (((\filter|Reg_delay_1|data_out\(11) & \filter|Reg_delay_1|data_out\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(8),
	datab => \filter|Reg_delay_1|data_out\(11),
	datac => \filter|Reg_delay_1|data_out\(9),
	datad => \filter|Reg_delay_1|data_out\(10),
	combout => \filter|Mult2|mult_core|romout[2][8]~combout\);

-- Location: LCCOMB_X17_Y16_N30
\filter|Mult4|mult_core|romout[2][8]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[2][8]~18_combout\ = (\filter|Reg_delay_2|data_out\(9) & ((\filter|Reg_delay_2|data_out\(10) & ((!\filter|Reg_delay_2|data_out\(8)) # (!\filter|Reg_delay_2|data_out\(11)))) # (!\filter|Reg_delay_2|data_out\(10) & 
-- (!\filter|Reg_delay_2|data_out\(11) & !\filter|Reg_delay_2|data_out\(8))))) # (!\filter|Reg_delay_2|data_out\(9) & (\filter|Reg_delay_2|data_out\(11) $ (((!\filter|Reg_delay_2|data_out\(10) & \filter|Reg_delay_2|data_out\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(10),
	datab => \filter|Reg_delay_2|data_out\(9),
	datac => \filter|Reg_delay_2|data_out\(11),
	datad => \filter|Reg_delay_2|data_out\(8),
	combout => \filter|Mult4|mult_core|romout[2][8]~18_combout\);

-- Location: LCCOMB_X16_Y24_N30
\filter|Mult0|mult_core|romout[2][8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[2][8]~combout\ = (\filter|v[9]~18_combout\ & ((\filter|v[8]~16_combout\ & (\filter|v[10]~20_combout\ & !\filter|v[11]~22_combout\)) # (!\filter|v[8]~16_combout\ & ((\filter|v[10]~20_combout\) # 
-- (!\filter|v[11]~22_combout\))))) # (!\filter|v[9]~18_combout\ & (\filter|v[11]~22_combout\ $ (((\filter|v[8]~16_combout\ & !\filter|v[10]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[8]~16_combout\,
	datab => \filter|v[10]~20_combout\,
	datac => \filter|v[9]~18_combout\,
	datad => \filter|v[11]~22_combout\,
	combout => \filter|Mult0|mult_core|romout[2][8]~combout\);

-- Location: LCCOMB_X18_Y16_N6
\filter|Mult2|mult_core|romout[2][9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[2][9]~combout\ = (\filter|Reg_delay_1|data_out\(11) & ((\filter|Reg_delay_1|data_out\(8) & (!\filter|Reg_delay_1|data_out\(9) & \filter|Reg_delay_1|data_out\(10))) # (!\filter|Reg_delay_1|data_out\(8) & 
-- ((\filter|Reg_delay_1|data_out\(10)) # (!\filter|Reg_delay_1|data_out\(9)))))) # (!\filter|Reg_delay_1|data_out\(11) & (\filter|Reg_delay_1|data_out\(9) $ (((\filter|Reg_delay_1|data_out\(8) & !\filter|Reg_delay_1|data_out\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(8),
	datab => \filter|Reg_delay_1|data_out\(11),
	datac => \filter|Reg_delay_1|data_out\(9),
	datad => \filter|Reg_delay_1|data_out\(10),
	combout => \filter|Mult2|mult_core|romout[2][9]~combout\);

-- Location: LCCOMB_X16_Y24_N26
\filter|Mult0|mult_core|romout[2][10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[2][10]~combout\ = (\filter|v[9]~18_combout\ & ((\filter|v[8]~16_combout\ & (!\filter|v[10]~20_combout\ & !\filter|v[11]~22_combout\)) # (!\filter|v[8]~16_combout\ & (\filter|v[10]~20_combout\ & \filter|v[11]~22_combout\)))) 
-- # (!\filter|v[9]~18_combout\ & (\filter|v[11]~22_combout\ $ (((!\filter|v[8]~16_combout\ & \filter|v[10]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[8]~16_combout\,
	datab => \filter|v[10]~20_combout\,
	datac => \filter|v[9]~18_combout\,
	datad => \filter|v[11]~22_combout\,
	combout => \filter|Mult0|mult_core|romout[2][10]~combout\);

-- Location: LCCOMB_X18_Y16_N2
\filter|Mult2|mult_core|romout[2][11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[2][11]~combout\ = (\filter|Reg_delay_1|data_out\(11) & (\filter|Reg_delay_1|data_out\(9) $ (((\filter|Reg_delay_1|data_out\(8)) # (!\filter|Reg_delay_1|data_out\(10)))))) # (!\filter|Reg_delay_1|data_out\(11) & 
-- ((\filter|Reg_delay_1|data_out\(8) & (\filter|Reg_delay_1|data_out\(9) & !\filter|Reg_delay_1|data_out\(10))) # (!\filter|Reg_delay_1|data_out\(8) & (!\filter|Reg_delay_1|data_out\(9) & \filter|Reg_delay_1|data_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(8),
	datab => \filter|Reg_delay_1|data_out\(11),
	datac => \filter|Reg_delay_1|data_out\(9),
	datad => \filter|Reg_delay_1|data_out\(10),
	combout => \filter|Mult2|mult_core|romout[2][11]~combout\);

-- Location: LCCOMB_X16_Y24_N4
\filter|Mult0|mult_core|romout[2][11]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[2][11]~18_combout\ = (\filter|v[10]~20_combout\ & ((\filter|v[8]~16_combout\ & ((\filter|v[9]~18_combout\) # (!\filter|v[11]~22_combout\))) # (!\filter|v[8]~16_combout\ & (\filter|v[9]~18_combout\ & 
-- !\filter|v[11]~22_combout\)))) # (!\filter|v[10]~20_combout\ & (((!\filter|v[9]~18_combout\ & \filter|v[11]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[8]~16_combout\,
	datab => \filter|v[10]~20_combout\,
	datac => \filter|v[9]~18_combout\,
	datad => \filter|v[11]~22_combout\,
	combout => \filter|Mult0|mult_core|romout[2][11]~18_combout\);

-- Location: LCCOMB_X17_Y23_N2
\filter|Reg_in|data_out~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_in|data_out~6_combout\ = (\RST_n~input_o\ & \DIN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datad => \DIN[1]~input_o\,
	combout => \filter|Reg_in|data_out~6_combout\);

-- Location: LCCOMB_X17_Y23_N4
\filter|Reg_in|data_out~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_in|data_out~7_combout\ = (\DIN[0]~input_o\ & \RST_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIN[0]~input_o\,
	datad => \RST_n~input_o\,
	combout => \filter|Reg_in|data_out~7_combout\);

-- Location: LCCOMB_X17_Y23_N22
\filter|Reg_in|data_out~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_in|data_out~8_combout\ = (\RST_n~input_o\ & \DIN[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datad => \DIN[7]~input_o\,
	combout => \filter|Reg_in|data_out~8_combout\);

-- Location: LCCOMB_X17_Y23_N16
\filter|Reg_in|data_out~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_in|data_out~9_combout\ = (\DIN[8]~input_o\ & \RST_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIN[8]~input_o\,
	datad => \RST_n~input_o\,
	combout => \filter|Reg_in|data_out~9_combout\);

-- Location: LCCOMB_X17_Y23_N10
\filter|Reg_in|data_out~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_in|data_out~10_combout\ = (\RST_n~input_o\ & \DIN[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datad => \DIN[10]~input_o\,
	combout => \filter|Reg_in|data_out~10_combout\);

-- Location: LCCOMB_X17_Y23_N20
\filter|Reg_in|data_out~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_in|data_out~11_combout\ = (\RST_n~input_o\ & \DIN[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datad => \DIN[9]~input_o\,
	combout => \filter|Reg_in|data_out~11_combout\);

-- Location: IOIBUF_X12_Y31_N8
\DIN[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(6),
	o => \DIN[6]~input_o\);

-- Location: IOIBUF_X26_Y31_N8
\DIN[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(1),
	o => \DIN[1]~input_o\);

-- Location: IOIBUF_X33_Y22_N1
\DIN[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(0),
	o => \DIN[0]~input_o\);

-- Location: IOIBUF_X20_Y31_N8
\DIN[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(7),
	o => \DIN[7]~input_o\);

-- Location: IOIBUF_X16_Y31_N1
\DIN[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(8),
	o => \DIN[8]~input_o\);

-- Location: IOIBUF_X16_Y31_N8
\DIN[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(10),
	o => \DIN[10]~input_o\);

-- Location: IOIBUF_X22_Y31_N8
\DIN[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(9),
	o => \DIN[9]~input_o\);

-- Location: IOOBUF_X24_Y31_N9
\DOUT[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \filter|Reg_out|data_out\(0),
	devoe => ww_devoe,
	o => ww_DOUT(0));

-- Location: IOOBUF_X24_Y31_N2
\DOUT[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \filter|Reg_out|data_out\(1),
	devoe => ww_devoe,
	o => ww_DOUT(1));

-- Location: IOOBUF_X33_Y25_N9
\DOUT[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \filter|Reg_out|data_out\(2),
	devoe => ww_devoe,
	o => ww_DOUT(2));

-- Location: IOOBUF_X22_Y31_N2
\DOUT[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \filter|Reg_out|data_out\(3),
	devoe => ww_devoe,
	o => ww_DOUT(3));

-- Location: IOOBUF_X33_Y25_N2
\DOUT[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \filter|Reg_out|data_out\(4),
	devoe => ww_devoe,
	o => ww_DOUT(4));

-- Location: IOOBUF_X20_Y31_N2
\DOUT[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \filter|Reg_out|data_out\(5),
	devoe => ww_devoe,
	o => ww_DOUT(5));

-- Location: IOOBUF_X22_Y0_N9
\DOUT[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \filter|Reg_out|data_out\(6),
	devoe => ww_devoe,
	o => ww_DOUT(6));

-- Location: IOOBUF_X22_Y0_N2
\DOUT[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \filter|Reg_out|data_out\(7),
	devoe => ww_devoe,
	o => ww_DOUT(7));

-- Location: IOOBUF_X10_Y0_N9
\DOUT[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \filter|Reg_out|data_out\(8),
	devoe => ww_devoe,
	o => ww_DOUT(8));

-- Location: IOOBUF_X20_Y0_N9
\DOUT[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \filter|Reg_out|data_out\(9),
	devoe => ww_devoe,
	o => ww_DOUT(9));

-- Location: IOOBUF_X14_Y31_N9
\DOUT[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \filter|Reg_out|data_out\(10),
	devoe => ww_devoe,
	o => ww_DOUT(10));

-- Location: IOOBUF_X29_Y0_N9
\DOUT[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DOUT(11));

-- Location: IOOBUF_X14_Y31_N2
\VOUT~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \filter|Reg_ctrl_2|data_out\(0),
	devoe => ww_devoe,
	o => ww_VOUT);

-- Location: IOIBUF_X16_Y0_N15
\CLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G17
\CLK~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X20_Y0_N1
\DIN[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(5),
	o => \DIN[5]~input_o\);

-- Location: LCCOMB_X17_Y23_N18
\filter|Reg_in|data_out~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_in|data_out~2_combout\ = (\RST_n~input_o\ & \DIN[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datad => \DIN[5]~input_o\,
	combout => \filter|Reg_in|data_out~2_combout\);

-- Location: IOIBUF_X24_Y0_N8
\VIN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VIN,
	o => \VIN~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\RST_n~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST_n,
	o => \RST_n~input_o\);

-- Location: LCCOMB_X17_Y23_N26
\filter|Reg_in|data_out[10]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_in|data_out[10]~1_combout\ = (\VIN~input_o\) # (!\RST_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VIN~input_o\,
	datad => \RST_n~input_o\,
	combout => \filter|Reg_in|data_out[10]~1_combout\);

-- Location: FF_X17_Y23_N19
\filter|Reg_in|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_in|data_out~2_combout\,
	ena => \filter|Reg_in|data_out[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_in|data_out\(5));

-- Location: IOIBUF_X24_Y0_N1
\DIN[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(4),
	o => \DIN[4]~input_o\);

-- Location: LCCOMB_X17_Y23_N12
\filter|Reg_in|data_out~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_in|data_out~3_combout\ = (\DIN[4]~input_o\ & \RST_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIN[4]~input_o\,
	datad => \RST_n~input_o\,
	combout => \filter|Reg_in|data_out~3_combout\);

-- Location: FF_X17_Y23_N13
\filter|Reg_in|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_in|data_out~3_combout\,
	ena => \filter|Reg_in|data_out[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_in|data_out\(4));

-- Location: IOIBUF_X26_Y31_N1
\DIN[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(3),
	o => \DIN[3]~input_o\);

-- Location: LCCOMB_X17_Y23_N14
\filter|Reg_in|data_out~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_in|data_out~4_combout\ = (\RST_n~input_o\ & \DIN[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datad => \DIN[3]~input_o\,
	combout => \filter|Reg_in|data_out~4_combout\);

-- Location: FF_X17_Y23_N15
\filter|Reg_in|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_in|data_out~4_combout\,
	ena => \filter|Reg_in|data_out[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_in|data_out\(3));

-- Location: IOIBUF_X12_Y0_N1
\DIN[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(2),
	o => \DIN[2]~input_o\);

-- Location: LCCOMB_X17_Y23_N8
\filter|Reg_in|data_out~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_in|data_out~5_combout\ = (\DIN[2]~input_o\ & \RST_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIN[2]~input_o\,
	datad => \RST_n~input_o\,
	combout => \filter|Reg_in|data_out~5_combout\);

-- Location: FF_X17_Y23_N9
\filter|Reg_in|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_in|data_out~5_combout\,
	ena => \filter|Reg_in|data_out[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_in|data_out\(2));

-- Location: IOIBUF_X33_Y24_N8
\DIN[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(11),
	o => \DIN[11]~input_o\);

-- Location: LCCOMB_X17_Y23_N6
\filter|Reg_in|data_out~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_in|data_out~12_combout\ = (\DIN[11]~input_o\ & \RST_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIN[11]~input_o\,
	datad => \RST_n~input_o\,
	combout => \filter|Reg_in|data_out~12_combout\);

-- Location: FF_X17_Y23_N7
\filter|Reg_in|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_in|data_out~12_combout\,
	ena => \filter|Reg_in|data_out[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_in|data_out\(11));

-- Location: LCCOMB_X18_Y16_N28
\filter|Reg_delay_2|data_out~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_delay_2|data_out~8_combout\ = (\filter|Reg_delay_1|data_out\(8) & \RST_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \filter|Reg_delay_1|data_out\(8),
	datad => \RST_n~input_o\,
	combout => \filter|Reg_delay_2|data_out~8_combout\);

-- Location: LCCOMB_X17_Y23_N24
\filter|Reg_ctrl_1|data_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_ctrl_1|data_out~0_combout\ = (\VIN~input_o\ & \RST_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VIN~input_o\,
	datad => \RST_n~input_o\,
	combout => \filter|Reg_ctrl_1|data_out~0_combout\);

-- Location: FF_X17_Y23_N25
\filter|Reg_ctrl_1|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_ctrl_1|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_ctrl_1|data_out\(0));

-- Location: LCCOMB_X18_Y25_N28
\filter|Reg_out|data_out[1]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_out|data_out[1]~13_combout\ = (\filter|Reg_ctrl_1|data_out\(0)) # (!\RST_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datad => \filter|Reg_ctrl_1|data_out\(0),
	combout => \filter|Reg_out|data_out[1]~13_combout\);

-- Location: FF_X18_Y16_N29
\filter|Reg_delay_2|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_delay_2|data_out~8_combout\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_delay_2|data_out\(8));

-- Location: LCCOMB_X16_Y16_N0
\filter|Mult3|mult_core|romout[2][11]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|romout[2][11]~15_combout\ = \filter|Reg_delay_2|data_out\(9) $ (\filter|Reg_delay_2|data_out\(11) $ (((\filter|Reg_delay_2|data_out\(8) & !\filter|Reg_delay_2|data_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(9),
	datab => \filter|Reg_delay_2|data_out\(11),
	datac => \filter|Reg_delay_2|data_out\(8),
	datad => \filter|Reg_delay_2|data_out\(10),
	combout => \filter|Mult3|mult_core|romout[2][11]~15_combout\);

-- Location: LCCOMB_X18_Y16_N20
\filter|Mult3|mult_core|romout[2][10]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|romout[2][10]~10_combout\ = \filter|Reg_delay_2|data_out\(10) $ (\filter|Reg_delay_2|data_out\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \filter|Reg_delay_2|data_out\(10),
	datad => \filter|Reg_delay_2|data_out\(8),
	combout => \filter|Mult3|mult_core|romout[2][10]~10_combout\);

-- Location: LCCOMB_X14_Y23_N0
\filter|Mult1|mult_core|romout[2][10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|romout[2][10]~combout\ = (\filter|Reg_delay_1|data_out\(10) & ((\filter|Reg_delay_1|data_out\(11) & ((\filter|Reg_delay_1|data_out\(8)) # (\filter|Reg_delay_1|data_out\(9)))) # (!\filter|Reg_delay_1|data_out\(11) & 
-- ((!\filter|Reg_delay_1|data_out\(9)))))) # (!\filter|Reg_delay_1|data_out\(10) & (\filter|Reg_delay_1|data_out\(11) $ (((\filter|Reg_delay_1|data_out\(8) & \filter|Reg_delay_1|data_out\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(11),
	datab => \filter|Reg_delay_1|data_out\(10),
	datac => \filter|Reg_delay_1|data_out\(8),
	datad => \filter|Reg_delay_1|data_out\(9),
	combout => \filter|Mult1|mult_core|romout[2][10]~combout\);

-- Location: LCCOMB_X14_Y23_N2
\filter|Mult1|mult_core|romout[2][9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|romout[2][9]~combout\ = \filter|Reg_delay_1|data_out\(10) $ (((\filter|Reg_delay_1|data_out\(8) & (\filter|Reg_delay_1|data_out\(11) & !\filter|Reg_delay_1|data_out\(9))) # (!\filter|Reg_delay_1|data_out\(8) & 
-- ((\filter|Reg_delay_1|data_out\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(11),
	datab => \filter|Reg_delay_1|data_out\(10),
	datac => \filter|Reg_delay_1|data_out\(8),
	datad => \filter|Reg_delay_1|data_out\(9),
	combout => \filter|Mult1|mult_core|romout[2][9]~combout\);

-- Location: LCCOMB_X16_Y23_N14
\filter|v[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|v[4]~8_combout\ = ((\filter|v1a0_piu_v2a1[4]~8_combout\ $ (\filter|Reg_in|data_out\(4) $ (!\filter|v[3]~7\)))) # (GND)
-- \filter|v[4]~9\ = CARRY((\filter|v1a0_piu_v2a1[4]~8_combout\ & ((\filter|Reg_in|data_out\(4)) # (!\filter|v[3]~7\))) # (!\filter|v1a0_piu_v2a1[4]~8_combout\ & (\filter|Reg_in|data_out\(4) & !\filter|v[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v1a0_piu_v2a1[4]~8_combout\,
	datab => \filter|Reg_in|data_out\(4),
	datad => VCC,
	cin => \filter|v[3]~7\,
	combout => \filter|v[4]~8_combout\,
	cout => \filter|v[4]~9\);

-- Location: LCCOMB_X15_Y24_N24
\filter|Reg_delay_1|data_out~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_delay_1|data_out~2_combout\ = (\filter|v[4]~8_combout\ & \RST_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filter|v[4]~8_combout\,
	datac => \RST_n~input_o\,
	combout => \filter|Reg_delay_1|data_out~2_combout\);

-- Location: FF_X15_Y24_N25
\filter|Reg_delay_1|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_delay_1|data_out~2_combout\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_delay_1|data_out\(4));

-- Location: LCCOMB_X17_Y23_N0
\filter|Reg_in|data_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_in|data_out~0_combout\ = (\DIN[6]~input_o\ & \RST_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[6]~input_o\,
	datad => \RST_n~input_o\,
	combout => \filter|Reg_in|data_out~0_combout\);

-- Location: FF_X17_Y23_N1
\filter|Reg_in|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_in|data_out~0_combout\,
	ena => \filter|Reg_in|data_out[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_in|data_out\(6));

-- Location: LCCOMB_X16_Y23_N16
\filter|v[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|v[5]~10_combout\ = (\filter|v1a0_piu_v2a1[5]~10_combout\ & ((\filter|Reg_in|data_out\(5) & (\filter|v[4]~9\ & VCC)) # (!\filter|Reg_in|data_out\(5) & (!\filter|v[4]~9\)))) # (!\filter|v1a0_piu_v2a1[5]~10_combout\ & ((\filter|Reg_in|data_out\(5) & 
-- (!\filter|v[4]~9\)) # (!\filter|Reg_in|data_out\(5) & ((\filter|v[4]~9\) # (GND)))))
-- \filter|v[5]~11\ = CARRY((\filter|v1a0_piu_v2a1[5]~10_combout\ & (!\filter|Reg_in|data_out\(5) & !\filter|v[4]~9\)) # (!\filter|v1a0_piu_v2a1[5]~10_combout\ & ((!\filter|v[4]~9\) # (!\filter|Reg_in|data_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v1a0_piu_v2a1[5]~10_combout\,
	datab => \filter|Reg_in|data_out\(5),
	datad => VCC,
	cin => \filter|v[4]~9\,
	combout => \filter|v[5]~10_combout\,
	cout => \filter|v[5]~11\);

-- Location: LCCOMB_X16_Y23_N18
\filter|v[6]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|v[6]~12_combout\ = ((\filter|v1a0_piu_v2a1[6]~12_combout\ $ (\filter|Reg_in|data_out\(6) $ (!\filter|v[5]~11\)))) # (GND)
-- \filter|v[6]~13\ = CARRY((\filter|v1a0_piu_v2a1[6]~12_combout\ & ((\filter|Reg_in|data_out\(6)) # (!\filter|v[5]~11\))) # (!\filter|v1a0_piu_v2a1[6]~12_combout\ & (\filter|Reg_in|data_out\(6) & !\filter|v[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v1a0_piu_v2a1[6]~12_combout\,
	datab => \filter|Reg_in|data_out\(6),
	datad => VCC,
	cin => \filter|v[5]~11\,
	combout => \filter|v[6]~12_combout\,
	cout => \filter|v[6]~13\);

-- Location: LCCOMB_X18_Y25_N26
\filter|Reg_delay_1|data_out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_delay_1|data_out~1_combout\ = (\RST_n~input_o\ & \filter|v[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datac => \filter|v[6]~12_combout\,
	combout => \filter|Reg_delay_1|data_out~1_combout\);

-- Location: FF_X18_Y25_N27
\filter|Reg_delay_1|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_delay_1|data_out~1_combout\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_delay_1|data_out\(6));

-- Location: LCCOMB_X15_Y24_N2
\filter|Mult1|mult_core|romout[1][12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|romout[1][12]~combout\ = (\filter|Reg_delay_1|data_out\(7) & ((\filter|Reg_delay_1|data_out\(6)) # ((\filter|Reg_delay_1|data_out\(4) & \filter|Reg_delay_1|data_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(7),
	datab => \filter|Reg_delay_1|data_out\(4),
	datac => \filter|Reg_delay_1|data_out\(6),
	datad => \filter|Reg_delay_1|data_out\(5),
	combout => \filter|Mult1|mult_core|romout[1][12]~combout\);

-- Location: LCCOMB_X15_Y24_N12
\filter|Mult1|mult_core|romout[1][11]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|romout[1][11]~0_combout\ = (\filter|Reg_delay_1|data_out\(7) & (!\filter|Reg_delay_1|data_out\(6) & ((!\filter|Reg_delay_1|data_out\(5)) # (!\filter|Reg_delay_1|data_out\(4))))) # (!\filter|Reg_delay_1|data_out\(7) & 
-- (((\filter|Reg_delay_1|data_out\(6) & \filter|Reg_delay_1|data_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(7),
	datab => \filter|Reg_delay_1|data_out\(4),
	datac => \filter|Reg_delay_1|data_out\(6),
	datad => \filter|Reg_delay_1|data_out\(5),
	combout => \filter|Mult1|mult_core|romout[1][11]~0_combout\);

-- Location: LCCOMB_X15_Y24_N14
\filter|Mult1|mult_core|romout[1][10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|romout[1][10]~combout\ = (\filter|Reg_delay_1|data_out\(6) & ((\filter|Reg_delay_1|data_out\(7) & ((\filter|Reg_delay_1|data_out\(4)) # (\filter|Reg_delay_1|data_out\(5)))) # (!\filter|Reg_delay_1|data_out\(7) & 
-- ((!\filter|Reg_delay_1|data_out\(5)))))) # (!\filter|Reg_delay_1|data_out\(6) & (\filter|Reg_delay_1|data_out\(7) $ (((\filter|Reg_delay_1|data_out\(4) & \filter|Reg_delay_1|data_out\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(7),
	datab => \filter|Reg_delay_1|data_out\(4),
	datac => \filter|Reg_delay_1|data_out\(6),
	datad => \filter|Reg_delay_1|data_out\(5),
	combout => \filter|Mult1|mult_core|romout[1][10]~combout\);

-- Location: LCCOMB_X15_Y24_N8
\filter|Mult1|mult_core|romout[1][9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|romout[1][9]~combout\ = \filter|Reg_delay_1|data_out\(6) $ (((\filter|Reg_delay_1|data_out\(4) & (\filter|Reg_delay_1|data_out\(7) & !\filter|Reg_delay_1|data_out\(5))) # (!\filter|Reg_delay_1|data_out\(4) & 
-- ((\filter|Reg_delay_1|data_out\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(7),
	datab => \filter|Reg_delay_1|data_out\(4),
	datac => \filter|Reg_delay_1|data_out\(6),
	datad => \filter|Reg_delay_1|data_out\(5),
	combout => \filter|Mult1|mult_core|romout[1][9]~combout\);

-- Location: LCCOMB_X16_Y23_N20
\filter|v[7]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|v[7]~14_combout\ = (\filter|Reg_in|data_out\(7) & ((\filter|v1a0_piu_v2a1[7]~14_combout\ & (\filter|v[6]~13\ & VCC)) # (!\filter|v1a0_piu_v2a1[7]~14_combout\ & (!\filter|v[6]~13\)))) # (!\filter|Reg_in|data_out\(7) & 
-- ((\filter|v1a0_piu_v2a1[7]~14_combout\ & (!\filter|v[6]~13\)) # (!\filter|v1a0_piu_v2a1[7]~14_combout\ & ((\filter|v[6]~13\) # (GND)))))
-- \filter|v[7]~15\ = CARRY((\filter|Reg_in|data_out\(7) & (!\filter|v1a0_piu_v2a1[7]~14_combout\ & !\filter|v[6]~13\)) # (!\filter|Reg_in|data_out\(7) & ((!\filter|v[6]~13\) # (!\filter|v1a0_piu_v2a1[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_in|data_out\(7),
	datab => \filter|v1a0_piu_v2a1[7]~14_combout\,
	datad => VCC,
	cin => \filter|v[6]~13\,
	combout => \filter|v[7]~14_combout\,
	cout => \filter|v[7]~15\);

-- Location: LCCOMB_X15_Y24_N18
\filter|Reg_delay_1|data_out~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_delay_1|data_out~3_combout\ = (\RST_n~input_o\ & \filter|v[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST_n~input_o\,
	datad => \filter|v[7]~14_combout\,
	combout => \filter|Reg_delay_1|data_out~3_combout\);

-- Location: FF_X15_Y24_N19
\filter|Reg_delay_1|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_delay_1|data_out~3_combout\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_delay_1|data_out\(7));

-- Location: LCCOMB_X15_Y24_N10
\filter|Mult1|mult_core|romout[1][8]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|romout[1][8]~1_combout\ = \filter|Reg_delay_1|data_out\(5) $ (((\filter|Reg_delay_1|data_out\(4) & !\filter|Reg_delay_1|data_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filter|Reg_delay_1|data_out\(4),
	datac => \filter|Reg_delay_1|data_out\(7),
	datad => \filter|Reg_delay_1|data_out\(5),
	combout => \filter|Mult1|mult_core|romout[1][8]~1_combout\);

-- Location: LCCOMB_X16_Y23_N12
\filter|v[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|v[3]~6_combout\ = (\filter|v1a0_piu_v2a1[3]~6_combout\ & ((\filter|Reg_in|data_out\(3) & (\filter|v[2]~5\ & VCC)) # (!\filter|Reg_in|data_out\(3) & (!\filter|v[2]~5\)))) # (!\filter|v1a0_piu_v2a1[3]~6_combout\ & ((\filter|Reg_in|data_out\(3) & 
-- (!\filter|v[2]~5\)) # (!\filter|Reg_in|data_out\(3) & ((\filter|v[2]~5\) # (GND)))))
-- \filter|v[3]~7\ = CARRY((\filter|v1a0_piu_v2a1[3]~6_combout\ & (!\filter|Reg_in|data_out\(3) & !\filter|v[2]~5\)) # (!\filter|v1a0_piu_v2a1[3]~6_combout\ & ((!\filter|v[2]~5\) # (!\filter|Reg_in|data_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v1a0_piu_v2a1[3]~6_combout\,
	datab => \filter|Reg_in|data_out\(3),
	datad => VCC,
	cin => \filter|v[2]~5\,
	combout => \filter|v[3]~6_combout\,
	cout => \filter|v[3]~7\);

-- Location: LCCOMB_X15_Y25_N30
\filter|Reg_delay_1|data_out~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_delay_1|data_out~7_combout\ = (\RST_n~input_o\ & \filter|v[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST_n~input_o\,
	datad => \filter|v[3]~6_combout\,
	combout => \filter|Reg_delay_1|data_out~7_combout\);

-- Location: FF_X15_Y25_N31
\filter|Reg_delay_1|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_delay_1|data_out~7_combout\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_delay_1|data_out\(3));

-- Location: LCCOMB_X15_Y22_N0
\filter|Reg_delay_2|data_out~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_delay_2|data_out~4_combout\ = (\filter|Reg_delay_1|data_out\(3) & \RST_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filter|Reg_delay_1|data_out\(3),
	datad => \RST_n~input_o\,
	combout => \filter|Reg_delay_2|data_out~4_combout\);

-- Location: FF_X16_Y13_N9
\filter|Reg_delay_2|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \filter|Reg_delay_2|data_out~4_combout\,
	sload => VCC,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_delay_2|data_out\(3));

-- Location: LCCOMB_X15_Y22_N20
\filter|Reg_delay_2|data_out~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_delay_2|data_out~6_combout\ = (\filter|Reg_delay_1|data_out\(2) & \RST_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(2),
	datad => \RST_n~input_o\,
	combout => \filter|Reg_delay_2|data_out~6_combout\);

-- Location: FF_X16_Y13_N21
\filter|Reg_delay_2|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \filter|Reg_delay_2|data_out~6_combout\,
	sload => VCC,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_delay_2|data_out\(2));

-- Location: LCCOMB_X16_Y23_N6
\filter|v[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|v[0]~0_combout\ = (\filter|Reg_in|data_out\(0) & (\filter|v1a0_piu_v2a1[0]~0_combout\ $ (VCC))) # (!\filter|Reg_in|data_out\(0) & (\filter|v1a0_piu_v2a1[0]~0_combout\ & VCC))
-- \filter|v[0]~1\ = CARRY((\filter|Reg_in|data_out\(0) & \filter|v1a0_piu_v2a1[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_in|data_out\(0),
	datab => \filter|v1a0_piu_v2a1[0]~0_combout\,
	datad => VCC,
	combout => \filter|v[0]~0_combout\,
	cout => \filter|v[0]~1\);

-- Location: LCCOMB_X15_Y25_N8
\filter|Reg_delay_1|data_out~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_delay_1|data_out~4_combout\ = (\RST_n~input_o\ & \filter|v[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST_n~input_o\,
	datac => \filter|v[0]~0_combout\,
	combout => \filter|Reg_delay_1|data_out~4_combout\);

-- Location: FF_X15_Y25_N9
\filter|Reg_delay_1|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_delay_1|data_out~4_combout\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_delay_1|data_out\(0));

-- Location: LCCOMB_X15_Y22_N30
\filter|Reg_delay_2|data_out~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_delay_2|data_out~7_combout\ = (\filter|Reg_delay_1|data_out\(0) & \RST_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \filter|Reg_delay_1|data_out\(0),
	datad => \RST_n~input_o\,
	combout => \filter|Reg_delay_2|data_out~7_combout\);

-- Location: FF_X16_Y13_N25
\filter|Reg_delay_2|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \filter|Reg_delay_2|data_out~7_combout\,
	sload => VCC,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_delay_2|data_out\(0));

-- Location: LCCOMB_X16_Y13_N10
\filter|Mult3|mult_core|romout[0][12]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|romout[0][12]~2_combout\ = (\filter|Reg_delay_2|data_out\(2) & (\filter|Reg_delay_2|data_out\(0) $ (((\filter|Reg_delay_2|data_out\(3)) # (!\filter|Reg_delay_2|data_out\(1)))))) # (!\filter|Reg_delay_2|data_out\(2) & 
-- ((\filter|Reg_delay_2|data_out\(1) & (!\filter|Reg_delay_2|data_out\(3) & !\filter|Reg_delay_2|data_out\(0))) # (!\filter|Reg_delay_2|data_out\(1) & (\filter|Reg_delay_2|data_out\(3) & \filter|Reg_delay_2|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(1),
	datab => \filter|Reg_delay_2|data_out\(3),
	datac => \filter|Reg_delay_2|data_out\(2),
	datad => \filter|Reg_delay_2|data_out\(0),
	combout => \filter|Mult3|mult_core|romout[0][12]~2_combout\);

-- Location: LCCOMB_X17_Y19_N30
\filter|Reg_delay_2|data_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_delay_2|data_out~0_combout\ = (\filter|Reg_delay_1|data_out\(6) & \RST_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(6),
	datad => \RST_n~input_o\,
	combout => \filter|Reg_delay_2|data_out~0_combout\);

-- Location: FF_X14_Y13_N9
\filter|Reg_delay_2|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \filter|Reg_delay_2|data_out~0_combout\,
	sload => VCC,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_delay_2|data_out\(6));

-- Location: LCCOMB_X15_Y22_N22
\filter|Reg_delay_2|data_out~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_delay_2|data_out~2_combout\ = (\filter|Reg_delay_1|data_out\(7) & \RST_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filter|Reg_delay_1|data_out\(7),
	datad => \RST_n~input_o\,
	combout => \filter|Reg_delay_2|data_out~2_combout\);

-- Location: FF_X14_Y13_N29
\filter|Reg_delay_2|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \filter|Reg_delay_2|data_out~2_combout\,
	sload => VCC,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_delay_2|data_out\(7));

-- Location: LCCOMB_X14_Y13_N20
\filter|Mult4|mult_core|_~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|_~0_combout\ = (\filter|Reg_delay_2|data_out\(6) & \filter|Reg_delay_2|data_out\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \filter|Reg_delay_2|data_out\(6),
	datad => \filter|Reg_delay_2|data_out\(7),
	combout => \filter|Mult4|mult_core|_~0_combout\);

-- Location: LCCOMB_X14_Y13_N22
\filter|Mult3|mult_core|romout[1][6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|romout[1][6]~combout\ = (\filter|Reg_delay_2|data_out\(6) & (\filter|Reg_delay_2|data_out\(5) & !\filter|Reg_delay_2|data_out\(7))) # (!\filter|Reg_delay_2|data_out\(6) & ((\filter|Reg_delay_2|data_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filter|Reg_delay_2|data_out\(5),
	datac => \filter|Reg_delay_2|data_out\(6),
	datad => \filter|Reg_delay_2|data_out\(7),
	combout => \filter|Mult3|mult_core|romout[1][6]~combout\);

-- Location: LCCOMB_X15_Y22_N26
\filter|Reg_delay_2|data_out~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_delay_2|data_out~5_combout\ = (\filter|Reg_delay_1|data_out\(1) & \RST_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filter|Reg_delay_1|data_out\(1),
	datad => \RST_n~input_o\,
	combout => \filter|Reg_delay_2|data_out~5_combout\);

-- Location: FF_X16_Y13_N27
\filter|Reg_delay_2|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \filter|Reg_delay_2|data_out~5_combout\,
	sload => VCC,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_delay_2|data_out\(1));

-- Location: LCCOMB_X16_Y13_N16
\filter|Mult3|mult_core|romout[0][7]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|romout[0][7]~5_combout\ = (\filter|Reg_delay_2|data_out\(3) & \filter|Reg_delay_2|data_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \filter|Reg_delay_2|data_out\(3),
	datad => \filter|Reg_delay_2|data_out\(2),
	combout => \filter|Mult3|mult_core|romout[0][7]~5_combout\);

-- Location: LCCOMB_X16_Y13_N18
\filter|Mult3|mult_core|romout[0][6]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|romout[0][6]~7_combout\ = (\filter|Reg_delay_2|data_out\(3) & ((!\filter|Reg_delay_2|data_out\(2)))) # (!\filter|Reg_delay_2|data_out\(3) & (\filter|Reg_delay_2|data_out\(1) & \filter|Reg_delay_2|data_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(1),
	datac => \filter|Reg_delay_2|data_out\(3),
	datad => \filter|Reg_delay_2|data_out\(2),
	combout => \filter|Mult3|mult_core|romout[0][6]~7_combout\);

-- Location: LCCOMB_X16_Y13_N12
\filter|Mult3|mult_core|romout[0][5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|romout[0][5]~8_combout\ = (\filter|Reg_delay_2|data_out\(1) & ((\filter|Reg_delay_2|data_out\(2) & (\filter|Reg_delay_2|data_out\(3) & \filter|Reg_delay_2|data_out\(0))) # (!\filter|Reg_delay_2|data_out\(2) & 
-- ((\filter|Reg_delay_2|data_out\(3)) # (\filter|Reg_delay_2|data_out\(0)))))) # (!\filter|Reg_delay_2|data_out\(1) & ((\filter|Reg_delay_2|data_out\(2) & (!\filter|Reg_delay_2|data_out\(3))) # (!\filter|Reg_delay_2|data_out\(2) & 
-- (\filter|Reg_delay_2|data_out\(3) & \filter|Reg_delay_2|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(1),
	datab => \filter|Reg_delay_2|data_out\(2),
	datac => \filter|Reg_delay_2|data_out\(3),
	datad => \filter|Reg_delay_2|data_out\(0),
	combout => \filter|Mult3|mult_core|romout[0][5]~8_combout\);

-- Location: LCCOMB_X17_Y24_N24
\filter|Reg_delay_2|data_out~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_delay_2|data_out~3_combout\ = (\filter|Reg_delay_1|data_out\(4) & \RST_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filter|Reg_delay_1|data_out\(4),
	datad => \RST_n~input_o\,
	combout => \filter|Reg_delay_2|data_out~3_combout\);

-- Location: FF_X14_Y13_N7
\filter|Reg_delay_2|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \filter|Reg_delay_2|data_out~3_combout\,
	sload => VCC,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_delay_2|data_out\(4));

-- Location: LCCOMB_X15_Y13_N0
\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\ = CARRY((\filter|Mult3|mult_core|romout[0][4]~9_combout\ & \filter|Reg_delay_2|data_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|romout[0][4]~9_combout\,
	datab => \filter|Reg_delay_2|data_out\(4),
	datad => VCC,
	cout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X15_Y13_N2
\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\ = CARRY((\filter|Mult4|mult_core|romout[1][1]~5_combout\ & (!\filter|Mult3|mult_core|romout[0][5]~8_combout\ & !\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\)) # 
-- (!\filter|Mult4|mult_core|romout[1][1]~5_combout\ & ((!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\) # (!\filter|Mult3|mult_core|romout[0][5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult4|mult_core|romout[1][1]~5_combout\,
	datab => \filter|Mult3|mult_core|romout[0][5]~8_combout\,
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\,
	cout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X15_Y13_N4
\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\ = CARRY((\filter|Mult3|mult_core|romout[1][2]~6_combout\ & ((\filter|Mult3|mult_core|romout[0][6]~7_combout\) # (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\))) # 
-- (!\filter|Mult3|mult_core|romout[1][2]~6_combout\ & (\filter|Mult3|mult_core|romout[0][6]~7_combout\ & !\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|romout[1][2]~6_combout\,
	datab => \filter|Mult3|mult_core|romout[0][6]~7_combout\,
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\,
	cout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\);

-- Location: LCCOMB_X15_Y13_N6
\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\ = CARRY((\filter|Mult3|mult_core|romout[1][3]~combout\ & (!\filter|Mult3|mult_core|romout[0][7]~5_combout\ & !\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\)) # 
-- (!\filter|Mult3|mult_core|romout[1][3]~combout\ & ((!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\) # (!\filter|Mult3|mult_core|romout[0][7]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|romout[1][3]~combout\,
	datab => \filter|Mult3|mult_core|romout[0][7]~5_combout\,
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\,
	cout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X15_Y13_N12
\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = ((\filter|Mult3|mult_core|romout[0][10]~3_combout\ $ (\filter|Mult3|mult_core|romout[1][6]~combout\ $ (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\filter|Mult3|mult_core|romout[0][10]~3_combout\ & ((\filter|Mult3|mult_core|romout[1][6]~combout\) # (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~11\))) # 
-- (!\filter|Mult3|mult_core|romout[0][10]~3_combout\ & (\filter|Mult3|mult_core|romout[1][6]~combout\ & !\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|romout[0][10]~3_combout\,
	datab => \filter|Mult3|mult_core|romout[1][6]~combout\,
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X15_Y13_N14
\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = (\filter|Mult3|mult_core|romout[0][11]~combout\ & ((\filter|Mult4|mult_core|_~0_combout\ & (\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~13\ & VCC)) # 
-- (!\filter|Mult4|mult_core|_~0_combout\ & (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~13\)))) # (!\filter|Mult3|mult_core|romout[0][11]~combout\ & ((\filter|Mult4|mult_core|_~0_combout\ & 
-- (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # (!\filter|Mult4|mult_core|_~0_combout\ & ((\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~15\ = CARRY((\filter|Mult3|mult_core|romout[0][11]~combout\ & (!\filter|Mult4|mult_core|_~0_combout\ & !\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # 
-- (!\filter|Mult3|mult_core|romout[0][11]~combout\ & ((!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (!\filter|Mult4|mult_core|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|romout[0][11]~combout\,
	datab => \filter|Mult4|mult_core|_~0_combout\,
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X15_Y13_N16
\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = ((\filter|Reg_delay_2|data_out\(4) $ (\filter|Mult3|mult_core|romout[0][12]~2_combout\ $ (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~15\)))) # (GND)
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~17\ = CARRY((\filter|Reg_delay_2|data_out\(4) & ((\filter|Mult3|mult_core|romout[0][12]~2_combout\) # (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~15\))) # 
-- (!\filter|Reg_delay_2|data_out\(4) & (\filter|Mult3|mult_core|romout[0][12]~2_combout\ & !\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(4),
	datab => \filter|Mult3|mult_core|romout[0][12]~2_combout\,
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	cout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X17_Y16_N0
\filter|Mult4|mult_core|romout[2][1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[2][1]~10_combout\ = \filter|Reg_delay_2|data_out\(9) $ (\filter|Reg_delay_2|data_out\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \filter|Reg_delay_2|data_out\(9),
	datad => \filter|Reg_delay_2|data_out\(8),
	combout => \filter|Mult4|mult_core|romout[2][1]~10_combout\);

-- Location: LCCOMB_X15_Y16_N0
\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\ = CARRY((\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & \filter|Reg_delay_2|data_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \filter|Reg_delay_2|data_out\(8),
	datad => VCC,
	cout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X15_Y16_N2
\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\ = CARRY((\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\filter|Mult4|mult_core|romout[2][1]~10_combout\ & 
-- !\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\)) # (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\) # 
-- (!\filter|Mult4|mult_core|romout[2][1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datab => \filter|Mult4|mult_core|romout[2][1]~10_combout\,
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\,
	cout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X15_Y16_N4
\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\ = CARRY((\filter|Mult3|mult_core|romout[2][2]~14_combout\ & ((\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\) # 
-- (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\))) # (!\filter|Mult3|mult_core|romout[2][2]~14_combout\ & (\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & 
-- !\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|romout[2][2]~14_combout\,
	datab => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\,
	cout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\);

-- Location: LCCOMB_X15_Y16_N6
\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\ = CARRY((\filter|Mult3|mult_core|romout[2][3]~13_combout\ & (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & 
-- !\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\)) # (!\filter|Mult3|mult_core|romout[2][3]~13_combout\ & ((!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\) # 
-- (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|romout[2][3]~13_combout\,
	datab => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\,
	cout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X15_Y16_N8
\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ = ((\filter|Mult3|mult_core|romout[2][4]~12_combout\ $ (\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ $ 
-- (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\)))) # (GND)
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ = CARRY((\filter|Mult3|mult_core|romout[2][4]~12_combout\ & ((\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\) # 
-- (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\))) # (!\filter|Mult3|mult_core|romout[2][4]~12_combout\ & (\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & 
-- !\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|romout[2][4]~12_combout\,
	datab => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\,
	combout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	cout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X15_Y23_N4
\filter|v1a0_piu_v2a1[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|v1a0_piu_v2a1[0]~0_combout\ = (\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & (\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ $ (VCC))) # 
-- (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & (\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & VCC))
-- \filter|v1a0_piu_v2a1[0]~1\ = CARRY((\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datab => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	combout => \filter|v1a0_piu_v2a1[0]~0_combout\,
	cout => \filter|v1a0_piu_v2a1[0]~1\);

-- Location: LCCOMB_X16_Y23_N8
\filter|v[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|v[1]~2_combout\ = (\filter|Reg_in|data_out\(1) & ((\filter|v1a0_piu_v2a1[1]~2_combout\ & (\filter|v[0]~1\ & VCC)) # (!\filter|v1a0_piu_v2a1[1]~2_combout\ & (!\filter|v[0]~1\)))) # (!\filter|Reg_in|data_out\(1) & 
-- ((\filter|v1a0_piu_v2a1[1]~2_combout\ & (!\filter|v[0]~1\)) # (!\filter|v1a0_piu_v2a1[1]~2_combout\ & ((\filter|v[0]~1\) # (GND)))))
-- \filter|v[1]~3\ = CARRY((\filter|Reg_in|data_out\(1) & (!\filter|v1a0_piu_v2a1[1]~2_combout\ & !\filter|v[0]~1\)) # (!\filter|Reg_in|data_out\(1) & ((!\filter|v[0]~1\) # (!\filter|v1a0_piu_v2a1[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_in|data_out\(1),
	datab => \filter|v1a0_piu_v2a1[1]~2_combout\,
	datad => VCC,
	cin => \filter|v[0]~1\,
	combout => \filter|v[1]~2_combout\,
	cout => \filter|v[1]~3\);

-- Location: LCCOMB_X15_Y25_N28
\filter|Reg_delay_1|data_out~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_delay_1|data_out~6_combout\ = (\filter|v[1]~2_combout\ & \RST_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filter|v[1]~2_combout\,
	datac => \RST_n~input_o\,
	combout => \filter|Reg_delay_1|data_out~6_combout\);

-- Location: FF_X15_Y25_N29
\filter|Reg_delay_1|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_delay_1|data_out~6_combout\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_delay_1|data_out\(1));

-- Location: LCCOMB_X16_Y23_N10
\filter|v[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|v[2]~4_combout\ = ((\filter|v1a0_piu_v2a1[2]~4_combout\ $ (\filter|Reg_in|data_out\(2) $ (!\filter|v[1]~3\)))) # (GND)
-- \filter|v[2]~5\ = CARRY((\filter|v1a0_piu_v2a1[2]~4_combout\ & ((\filter|Reg_in|data_out\(2)) # (!\filter|v[1]~3\))) # (!\filter|v1a0_piu_v2a1[2]~4_combout\ & (\filter|Reg_in|data_out\(2) & !\filter|v[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v1a0_piu_v2a1[2]~4_combout\,
	datab => \filter|Reg_in|data_out\(2),
	datad => VCC,
	cin => \filter|v[1]~3\,
	combout => \filter|v[2]~4_combout\,
	cout => \filter|v[2]~5\);

-- Location: LCCOMB_X15_Y25_N10
\filter|Reg_delay_1|data_out~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_delay_1|data_out~5_combout\ = (\filter|v[2]~4_combout\ & \RST_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filter|v[2]~4_combout\,
	datac => \RST_n~input_o\,
	combout => \filter|Reg_delay_1|data_out~5_combout\);

-- Location: FF_X15_Y25_N11
\filter|Reg_delay_1|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_delay_1|data_out~5_combout\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_delay_1|data_out\(2));

-- Location: LCCOMB_X15_Y25_N2
\filter|Mult1|mult_core|romout[0][11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|romout[0][11]~combout\ = (\filter|Reg_delay_1|data_out\(3) & (!\filter|Reg_delay_1|data_out\(2) & ((!\filter|Reg_delay_1|data_out\(0)) # (!\filter|Reg_delay_1|data_out\(1))))) # (!\filter|Reg_delay_1|data_out\(3) & 
-- (\filter|Reg_delay_1|data_out\(1) & ((\filter|Reg_delay_1|data_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(3),
	datab => \filter|Reg_delay_1|data_out\(1),
	datac => \filter|Reg_delay_1|data_out\(0),
	datad => \filter|Reg_delay_1|data_out\(2),
	combout => \filter|Mult1|mult_core|romout[0][11]~combout\);

-- Location: LCCOMB_X15_Y25_N20
\filter|Mult1|mult_core|romout[0][10]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|romout[0][10]~4_combout\ = (\filter|Reg_delay_1|data_out\(2) & ((\filter|Reg_delay_1|data_out\(3) & ((\filter|Reg_delay_1|data_out\(0)) # (\filter|Reg_delay_1|data_out\(1)))) # (!\filter|Reg_delay_1|data_out\(3) & 
-- ((!\filter|Reg_delay_1|data_out\(1)))))) # (!\filter|Reg_delay_1|data_out\(2) & (\filter|Reg_delay_1|data_out\(3) $ (((\filter|Reg_delay_1|data_out\(0) & \filter|Reg_delay_1|data_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(2),
	datab => \filter|Reg_delay_1|data_out\(0),
	datac => \filter|Reg_delay_1|data_out\(3),
	datad => \filter|Reg_delay_1|data_out\(1),
	combout => \filter|Mult1|mult_core|romout[0][10]~4_combout\);

-- Location: LCCOMB_X14_Y24_N28
\filter|Mult1|mult_core|romout[0][8]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|romout[0][8]~6_combout\ = \filter|Reg_delay_1|data_out\(1) $ (((!\filter|Reg_delay_1|data_out\(3) & \filter|Reg_delay_1|data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(1),
	datac => \filter|Reg_delay_1|data_out\(3),
	datad => \filter|Reg_delay_1|data_out\(0),
	combout => \filter|Mult1|mult_core|romout[0][8]~6_combout\);

-- Location: LCCOMB_X14_Y24_N2
\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\ = CARRY((\filter|Reg_delay_1|data_out\(4) & \filter|Reg_delay_1|data_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(4),
	datab => \filter|Reg_delay_1|data_out\(0),
	datad => VCC,
	cout => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X14_Y24_N4
\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\ = CARRY((\filter|Reg_delay_1|data_out\(1) & (!\filter|Reg_delay_1|data_out\(5) & !\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\)) # 
-- (!\filter|Reg_delay_1|data_out\(1) & ((!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\) # (!\filter|Reg_delay_1|data_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(1),
	datab => \filter|Reg_delay_1|data_out\(5),
	datad => VCC,
	cin => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\,
	cout => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X14_Y24_N6
\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\ = CARRY((\filter|Reg_delay_1|data_out\(2) & ((\filter|Reg_delay_1|data_out\(6)) # (!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\))) # 
-- (!\filter|Reg_delay_1|data_out\(2) & (\filter|Reg_delay_1|data_out\(6) & !\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(2),
	datab => \filter|Reg_delay_1|data_out\(6),
	datad => VCC,
	cin => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\,
	cout => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\);

-- Location: LCCOMB_X14_Y24_N8
\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\ = CARRY((\filter|Mult1|mult_core|romout[0][7]~7_combout\ & (!\filter|Reg_delay_1|data_out\(7) & !\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\)) # 
-- (!\filter|Mult1|mult_core|romout[0][7]~7_combout\ & ((!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\) # (!\filter|Reg_delay_1|data_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult1|mult_core|romout[0][7]~7_combout\,
	datab => \filter|Reg_delay_1|data_out\(7),
	datad => VCC,
	cin => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\,
	cout => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X14_Y24_N16
\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = (\filter|Mult1|mult_core|romout[1][7]~3_combout\ & ((\filter|Mult1|mult_core|romout[0][11]~combout\ & (\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~13\ & VCC)) # 
-- (!\filter|Mult1|mult_core|romout[0][11]~combout\ & (!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~13\)))) # (!\filter|Mult1|mult_core|romout[1][7]~3_combout\ & ((\filter|Mult1|mult_core|romout[0][11]~combout\ & 
-- (!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # (!\filter|Mult1|mult_core|romout[0][11]~combout\ & ((\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~15\ = CARRY((\filter|Mult1|mult_core|romout[1][7]~3_combout\ & (!\filter|Mult1|mult_core|romout[0][11]~combout\ & !\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # 
-- (!\filter|Mult1|mult_core|romout[1][7]~3_combout\ & ((!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (!\filter|Mult1|mult_core|romout[0][11]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult1|mult_core|romout[1][7]~3_combout\,
	datab => \filter|Mult1|mult_core|romout[0][11]~combout\,
	datad => VCC,
	cin => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cout => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X14_Y24_N22
\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ = (\filter|Mult1|mult_core|romout[1][10]~combout\ & (\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~19\ $ (GND))) # (!\filter|Mult1|mult_core|romout[1][10]~combout\ & 
-- (!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~19\ & VCC))
-- \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~21\ = CARRY((\filter|Mult1|mult_core|romout[1][10]~combout\ & !\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filter|Mult1|mult_core|romout[1][10]~combout\,
	datad => VCC,
	cin => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~19\,
	combout => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	cout => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~21\);

-- Location: LCCOMB_X14_Y24_N26
\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ = \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~23\ $ (!\filter|Mult1|mult_core|romout[1][12]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \filter|Mult1|mult_core|romout[1][12]~combout\,
	cin => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~23\,
	combout => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\);

-- Location: LCCOMB_X16_Y24_N10
\filter|Mult1|mult_core|romout[2][7]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|romout[2][7]~9_combout\ = \filter|Reg_delay_1|data_out\(8) $ (\filter|Reg_delay_1|data_out\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filter|Reg_delay_1|data_out\(8),
	datad => \filter|Reg_delay_1|data_out\(11),
	combout => \filter|Mult1|mult_core|romout[2][7]~9_combout\);

-- Location: LCCOMB_X14_Y23_N4
\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\ = CARRY((\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & \filter|Reg_delay_1|data_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \filter|Reg_delay_1|data_out\(8),
	datad => VCC,
	cout => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X14_Y23_N6
\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\ = CARRY((\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\filter|Reg_delay_1|data_out\(9) & 
-- !\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\)) # (!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\) # 
-- (!\filter|Reg_delay_1|data_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datab => \filter|Reg_delay_1|data_out\(9),
	datad => VCC,
	cin => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\,
	cout => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X14_Y23_N8
\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\ = CARRY((\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & ((\filter|Reg_delay_1|data_out\(10)) # 
-- (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\))) # (!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & (\filter|Reg_delay_1|data_out\(10) & 
-- !\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datab => \filter|Reg_delay_1|data_out\(10),
	datad => VCC,
	cin => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\,
	cout => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\);

-- Location: LCCOMB_X14_Y23_N10
\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\ = CARRY((\filter|Reg_delay_1|data_out\(11) & (!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & 
-- !\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\)) # (!\filter|Reg_delay_1|data_out\(11) & ((!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\) # 
-- (!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(11),
	datab => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\,
	cout => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X14_Y23_N18
\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ = (\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & ((\filter|Mult1|mult_core|romout[2][7]~9_combout\ & 
-- (\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ & VCC)) # (!\filter|Mult1|mult_core|romout[2][7]~9_combout\ & (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)))) # 
-- (!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & ((\filter|Mult1|mult_core|romout[2][7]~9_combout\ & (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)) # 
-- (!\filter|Mult1|mult_core|romout[2][7]~9_combout\ & ((\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ = CARRY((\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & (!\filter|Mult1|mult_core|romout[2][7]~9_combout\ & 
-- !\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)) # (!\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & ((!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # 
-- (!\filter|Mult1|mult_core|romout[2][7]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	datab => \filter|Mult1|mult_core|romout[2][7]~9_combout\,
	datad => VCC,
	cin => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\,
	combout => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	cout => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X14_Y23_N20
\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ = ((\filter|Mult1|mult_core|romout[2][8]~8_combout\ $ (\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ $ 
-- (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\)))) # (GND)
-- \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ = CARRY((\filter|Mult1|mult_core|romout[2][8]~8_combout\ & ((\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\) # 
-- (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\))) # (!\filter|Mult1|mult_core|romout[2][8]~8_combout\ & (\filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ & 
-- !\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult1|mult_core|romout[2][8]~8_combout\,
	datab => \filter|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\,
	combout => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	cout => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X14_Y23_N22
\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ = (\filter|Mult1|mult_core|romout[2][9]~combout\ & (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\)) # 
-- (!\filter|Mult1|mult_core|romout[2][9]~combout\ & ((\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\) # (GND)))
-- \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ = CARRY((!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\) # (!\filter|Mult1|mult_core|romout[2][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filter|Mult1|mult_core|romout[2][9]~combout\,
	datad => VCC,
	cin => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\,
	combout => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	cout => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\);

-- Location: LCCOMB_X14_Y23_N24
\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ = (\filter|Mult1|mult_core|romout[2][10]~combout\ & (\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ $ (GND))) # 
-- (!\filter|Mult1|mult_core|romout[2][10]~combout\ & (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ & VCC))
-- \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\ = CARRY((\filter|Mult1|mult_core|romout[2][10]~combout\ & !\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filter|Mult1|mult_core|romout[2][10]~combout\,
	datad => VCC,
	cin => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\,
	combout => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\,
	cout => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\);

-- Location: LCCOMB_X13_Y13_N2
\filter|Mult3|mult_core|romout[1][10]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|romout[1][10]~1_combout\ = \filter|Reg_delay_2|data_out\(6) $ (\filter|Reg_delay_2|data_out\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \filter|Reg_delay_2|data_out\(6),
	datad => \filter|Reg_delay_2|data_out\(4),
	combout => \filter|Mult3|mult_core|romout[1][10]~1_combout\);

-- Location: LCCOMB_X15_Y13_N20
\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ = ((\filter|Mult4|mult_core|romout[0][11]~combout\ $ (\filter|Mult3|mult_core|romout[1][10]~1_combout\ $ (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~19\)))) # (GND)
-- \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~21\ = CARRY((\filter|Mult4|mult_core|romout[0][11]~combout\ & ((\filter|Mult3|mult_core|romout[1][10]~1_combout\) # (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~19\))) # 
-- (!\filter|Mult4|mult_core|romout[0][11]~combout\ & (\filter|Mult3|mult_core|romout[1][10]~1_combout\ & !\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult4|mult_core|romout[0][11]~combout\,
	datab => \filter|Mult3|mult_core|romout[1][10]~1_combout\,
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~19\,
	combout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	cout => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~21\);

-- Location: LCCOMB_X15_Y16_N10
\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ = (\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & ((\filter|Mult3|mult_core|romout[2][5]~combout\ & 
-- (\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ & VCC)) # (!\filter|Mult3|mult_core|romout[2][5]~combout\ & (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)))) # 
-- (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & ((\filter|Mult3|mult_core|romout[2][5]~combout\ & (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # (!\filter|Mult3|mult_core|romout[2][5]~combout\ 
-- & ((\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ = CARRY((\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & (!\filter|Mult3|mult_core|romout[2][5]~combout\ & 
-- !\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & ((!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # 
-- (!\filter|Mult3|mult_core|romout[2][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	datab => \filter|Mult3|mult_core|romout[2][5]~combout\,
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\,
	combout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	cout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X15_Y16_N12
\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ = ((\filter|Mult3|mult_core|romout[2][6]~11_combout\ $ (\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ $ 
-- (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ = CARRY((\filter|Mult3|mult_core|romout[2][6]~11_combout\ & ((\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\) # 
-- (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\))) # (!\filter|Mult3|mult_core|romout[2][6]~11_combout\ & (\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & 
-- !\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|romout[2][6]~11_combout\,
	datab => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\,
	combout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	cout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X15_Y23_N6
\filter|v1a0_piu_v2a1[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|v1a0_piu_v2a1[1]~2_combout\ = (\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & ((\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (\filter|v1a0_piu_v2a1[0]~1\ & VCC)) # 
-- (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (!\filter|v1a0_piu_v2a1[0]~1\)))) # (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & 
-- ((\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (!\filter|v1a0_piu_v2a1[0]~1\)) # (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & ((\filter|v1a0_piu_v2a1[0]~1\) # (GND)))))
-- \filter|v1a0_piu_v2a1[1]~3\ = CARRY((\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & !\filter|v1a0_piu_v2a1[0]~1\)) # 
-- (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & ((!\filter|v1a0_piu_v2a1[0]~1\) # (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datab => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \filter|v1a0_piu_v2a1[0]~1\,
	combout => \filter|v1a0_piu_v2a1[1]~2_combout\,
	cout => \filter|v1a0_piu_v2a1[1]~3\);

-- Location: LCCOMB_X15_Y23_N18
\filter|v1a0_piu_v2a1[7]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|v1a0_piu_v2a1[7]~14_combout\ = (\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ & ((\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ & (\filter|v1a0_piu_v2a1[6]~13\ & VCC)) # 
-- (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ & (!\filter|v1a0_piu_v2a1[6]~13\)))) # (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ & 
-- ((\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ & (!\filter|v1a0_piu_v2a1[6]~13\)) # (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ & ((\filter|v1a0_piu_v2a1[6]~13\) # (GND)))))
-- \filter|v1a0_piu_v2a1[7]~15\ = CARRY((\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ & (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ & !\filter|v1a0_piu_v2a1[6]~13\)) # 
-- (!\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ & ((!\filter|v1a0_piu_v2a1[6]~13\) # (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\,
	datab => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \filter|v1a0_piu_v2a1[6]~13\,
	combout => \filter|v1a0_piu_v2a1[7]~14_combout\,
	cout => \filter|v1a0_piu_v2a1[7]~15\);

-- Location: LCCOMB_X16_Y23_N22
\filter|v[8]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|v[8]~16_combout\ = ((\filter|Reg_in|data_out\(8) $ (\filter|v1a0_piu_v2a1[8]~16_combout\ $ (!\filter|v[7]~15\)))) # (GND)
-- \filter|v[8]~17\ = CARRY((\filter|Reg_in|data_out\(8) & ((\filter|v1a0_piu_v2a1[8]~16_combout\) # (!\filter|v[7]~15\))) # (!\filter|Reg_in|data_out\(8) & (\filter|v1a0_piu_v2a1[8]~16_combout\ & !\filter|v[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_in|data_out\(8),
	datab => \filter|v1a0_piu_v2a1[8]~16_combout\,
	datad => VCC,
	cin => \filter|v[7]~15\,
	combout => \filter|v[8]~16_combout\,
	cout => \filter|v[8]~17\);

-- Location: LCCOMB_X16_Y23_N24
\filter|v[9]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|v[9]~18_combout\ = (\filter|Reg_in|data_out\(9) & ((\filter|v1a0_piu_v2a1[9]~18_combout\ & (\filter|v[8]~17\ & VCC)) # (!\filter|v1a0_piu_v2a1[9]~18_combout\ & (!\filter|v[8]~17\)))) # (!\filter|Reg_in|data_out\(9) & 
-- ((\filter|v1a0_piu_v2a1[9]~18_combout\ & (!\filter|v[8]~17\)) # (!\filter|v1a0_piu_v2a1[9]~18_combout\ & ((\filter|v[8]~17\) # (GND)))))
-- \filter|v[9]~19\ = CARRY((\filter|Reg_in|data_out\(9) & (!\filter|v1a0_piu_v2a1[9]~18_combout\ & !\filter|v[8]~17\)) # (!\filter|Reg_in|data_out\(9) & ((!\filter|v[8]~17\) # (!\filter|v1a0_piu_v2a1[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_in|data_out\(9),
	datab => \filter|v1a0_piu_v2a1[9]~18_combout\,
	datad => VCC,
	cin => \filter|v[8]~17\,
	combout => \filter|v[9]~18_combout\,
	cout => \filter|v[9]~19\);

-- Location: LCCOMB_X16_Y24_N12
\filter|Reg_delay_1|data_out~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_delay_1|data_out~10_combout\ = (\RST_n~input_o\ & \filter|v[9]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datac => \filter|v[9]~18_combout\,
	combout => \filter|Reg_delay_1|data_out~10_combout\);

-- Location: FF_X16_Y24_N13
\filter|Reg_delay_1|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_delay_1|data_out~10_combout\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_delay_1|data_out\(9));

-- Location: LCCOMB_X17_Y19_N2
\filter|Reg_delay_2|data_out~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_delay_2|data_out~11_combout\ = (\RST_n~input_o\ & \filter|Reg_delay_1|data_out\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datad => \filter|Reg_delay_1|data_out\(9),
	combout => \filter|Reg_delay_2|data_out~11_combout\);

-- Location: FF_X17_Y19_N3
\filter|Reg_delay_2|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_delay_2|data_out~11_combout\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_delay_2|data_out\(9));

-- Location: LCCOMB_X14_Y13_N18
\filter|Mult3|mult_core|romout[1][11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|romout[1][11]~combout\ = \filter|Reg_delay_2|data_out\(7) $ (\filter|Reg_delay_2|data_out\(5) $ (((\filter|Reg_delay_2|data_out\(4) & !\filter|Reg_delay_2|data_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(4),
	datab => \filter|Reg_delay_2|data_out\(7),
	datac => \filter|Reg_delay_2|data_out\(6),
	datad => \filter|Reg_delay_2|data_out\(5),
	combout => \filter|Mult3|mult_core|romout[1][11]~combout\);

-- Location: LCCOMB_X15_Y16_N22
\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ = (\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~30_combout\ & ((\filter|Mult3|mult_core|romout[2][11]~15_combout\ & 
-- (\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\ & VCC)) # (!\filter|Mult3|mult_core|romout[2][11]~15_combout\ & (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\)))) # 
-- (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~30_combout\ & ((\filter|Mult3|mult_core|romout[2][11]~15_combout\ & (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\)) # 
-- (!\filter|Mult3|mult_core|romout[2][11]~15_combout\ & ((\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\) # (GND)))))
-- \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\ = CARRY((\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~30_combout\ & (!\filter|Mult3|mult_core|romout[2][11]~15_combout\ & 
-- !\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\)) # (!\filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~30_combout\ & ((!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\) # 
-- (!\filter|Mult3|mult_core|romout[2][11]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|padder|adder[0]|auto_generated|op_1~30_combout\,
	datab => \filter|Mult3|mult_core|romout[2][11]~15_combout\,
	datad => VCC,
	cin => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\,
	combout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\,
	cout => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\);

-- Location: LCCOMB_X15_Y23_N20
\filter|v1a0_piu_v2a1[8]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|v1a0_piu_v2a1[8]~16_combout\ = ((\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ $ (\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ $ (!\filter|v1a0_piu_v2a1[7]~15\)))) # 
-- (GND)
-- \filter|v1a0_piu_v2a1[8]~17\ = CARRY((\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ & ((\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\) # (!\filter|v1a0_piu_v2a1[7]~15\))) # 
-- (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ & (\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ & !\filter|v1a0_piu_v2a1[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\,
	datab => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \filter|v1a0_piu_v2a1[7]~15\,
	combout => \filter|v1a0_piu_v2a1[8]~16_combout\,
	cout => \filter|v1a0_piu_v2a1[8]~17\);

-- Location: LCCOMB_X16_Y24_N18
\filter|Reg_delay_1|data_out~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_delay_1|data_out~9_combout\ = (\RST_n~input_o\ & \filter|v[8]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST_n~input_o\,
	datad => \filter|v[8]~16_combout\,
	combout => \filter|Reg_delay_1|data_out~9_combout\);

-- Location: FF_X16_Y24_N19
\filter|Reg_delay_1|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_delay_1|data_out~9_combout\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_delay_1|data_out\(8));

-- Location: LCCOMB_X16_Y24_N20
\filter|Mult1|mult_core|romout[2][12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|romout[2][12]~combout\ = (\filter|Reg_delay_1|data_out\(11) & ((\filter|Reg_delay_1|data_out\(10)) # ((\filter|Reg_delay_1|data_out\(9) & \filter|Reg_delay_1|data_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(9),
	datab => \filter|Reg_delay_1|data_out\(8),
	datac => \filter|Reg_delay_1|data_out\(10),
	datad => \filter|Reg_delay_1|data_out\(11),
	combout => \filter|Mult1|mult_core|romout[2][12]~combout\);

-- Location: LCCOMB_X14_Y23_N28
\filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ = \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\ $ (!\filter|Mult1|mult_core|romout[2][12]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \filter|Mult1|mult_core|romout[2][12]~combout\,
	cin => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\,
	combout => \filter|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\);

-- Location: LCCOMB_X15_Y23_N22
\filter|v1a0_piu_v2a1[9]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|v1a0_piu_v2a1[9]~18_combout\ = (\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26_combout\ & (!\filter|v1a0_piu_v2a1[8]~17\)) # (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26_combout\ & 
-- ((\filter|v1a0_piu_v2a1[8]~17\) # (GND)))
-- \filter|v1a0_piu_v2a1[9]~19\ = CARRY((!\filter|v1a0_piu_v2a1[8]~17\) # (!\filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filter|Mult3|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26_combout\,
	datad => VCC,
	cin => \filter|v1a0_piu_v2a1[8]~17\,
	combout => \filter|v1a0_piu_v2a1[9]~18_combout\,
	cout => \filter|v1a0_piu_v2a1[9]~19\);

-- Location: LCCOMB_X16_Y23_N26
\filter|v[10]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|v[10]~20_combout\ = ((\filter|Reg_in|data_out\(10) $ (\filter|v1a0_piu_v2a1[10]~20_combout\ $ (!\filter|v[9]~19\)))) # (GND)
-- \filter|v[10]~21\ = CARRY((\filter|Reg_in|data_out\(10) & ((\filter|v1a0_piu_v2a1[10]~20_combout\) # (!\filter|v[9]~19\))) # (!\filter|Reg_in|data_out\(10) & (\filter|v1a0_piu_v2a1[10]~20_combout\ & !\filter|v[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_in|data_out\(10),
	datab => \filter|v1a0_piu_v2a1[10]~20_combout\,
	datad => VCC,
	cin => \filter|v[9]~19\,
	combout => \filter|v[10]~20_combout\,
	cout => \filter|v[10]~21\);

-- Location: LCCOMB_X16_Y23_N28
\filter|v[11]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|v[11]~22_combout\ = \filter|v1a0_piu_v2a1[11]~22_combout\ $ (\filter|v[10]~21\ $ (\filter|Reg_in|data_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v1a0_piu_v2a1[11]~22_combout\,
	datad => \filter|Reg_in|data_out\(11),
	cin => \filter|v[10]~21\,
	combout => \filter|v[11]~22_combout\);

-- Location: LCCOMB_X16_Y24_N24
\filter|Reg_delay_1|data_out~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_delay_1|data_out~8_combout\ = (\RST_n~input_o\ & \filter|v[11]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST_n~input_o\,
	datad => \filter|v[11]~22_combout\,
	combout => \filter|Reg_delay_1|data_out~8_combout\);

-- Location: FF_X16_Y24_N25
\filter|Reg_delay_1|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_delay_1|data_out~8_combout\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_delay_1|data_out\(11));

-- Location: LCCOMB_X18_Y16_N8
\filter|Reg_delay_2|data_out~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_delay_2|data_out~10_combout\ = (\RST_n~input_o\ & \filter|Reg_delay_1|data_out\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datad => \filter|Reg_delay_1|data_out\(11),
	combout => \filter|Reg_delay_2|data_out~10_combout\);

-- Location: FF_X18_Y16_N9
\filter|Reg_delay_2|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_delay_2|data_out~10_combout\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_delay_2|data_out\(11));

-- Location: LCCOMB_X16_Y16_N30
\filter|Mult4|mult_core|romout[2][10]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[2][10]~13_combout\ = (\filter|Reg_delay_2|data_out\(9) & ((\filter|Reg_delay_2|data_out\(11) & (!\filter|Reg_delay_2|data_out\(8) & \filter|Reg_delay_2|data_out\(10))) # (!\filter|Reg_delay_2|data_out\(11) & 
-- (\filter|Reg_delay_2|data_out\(8) & !\filter|Reg_delay_2|data_out\(10))))) # (!\filter|Reg_delay_2|data_out\(9) & (\filter|Reg_delay_2|data_out\(11) $ (((!\filter|Reg_delay_2|data_out\(8) & \filter|Reg_delay_2|data_out\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(9),
	datab => \filter|Reg_delay_2|data_out\(11),
	datac => \filter|Reg_delay_2|data_out\(8),
	datad => \filter|Reg_delay_2|data_out\(10),
	combout => \filter|Mult4|mult_core|romout[2][10]~13_combout\);

-- Location: LCCOMB_X16_Y24_N6
\filter|Reg_delay_1|data_out~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_delay_1|data_out~11_combout\ = (\filter|v[10]~20_combout\ & \RST_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filter|v[10]~20_combout\,
	datac => \RST_n~input_o\,
	combout => \filter|Reg_delay_1|data_out~11_combout\);

-- Location: FF_X16_Y24_N7
\filter|Reg_delay_1|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_delay_1|data_out~11_combout\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_delay_1|data_out\(10));

-- Location: LCCOMB_X18_Y16_N14
\filter|Reg_delay_2|data_out~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_delay_2|data_out~9_combout\ = (\RST_n~input_o\ & \filter|Reg_delay_1|data_out\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datad => \filter|Reg_delay_1|data_out\(10),
	combout => \filter|Reg_delay_2|data_out~9_combout\);

-- Location: FF_X18_Y16_N15
\filter|Reg_delay_2|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_delay_2|data_out~9_combout\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_delay_2|data_out\(10));

-- Location: LCCOMB_X16_Y16_N24
\filter|Mult3|mult_core|romout[2][5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult3|mult_core|romout[2][5]~combout\ = (\filter|Reg_delay_2|data_out\(10) & ((\filter|Reg_delay_2|data_out\(11) & (\filter|Reg_delay_2|data_out\(8) & \filter|Reg_delay_2|data_out\(9))) # (!\filter|Reg_delay_2|data_out\(11) & 
-- ((!\filter|Reg_delay_2|data_out\(9)))))) # (!\filter|Reg_delay_2|data_out\(10) & ((\filter|Reg_delay_2|data_out\(8) & ((\filter|Reg_delay_2|data_out\(11)) # (\filter|Reg_delay_2|data_out\(9)))) # (!\filter|Reg_delay_2|data_out\(8) & 
-- (\filter|Reg_delay_2|data_out\(11) & \filter|Reg_delay_2|data_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(8),
	datab => \filter|Reg_delay_2|data_out\(10),
	datac => \filter|Reg_delay_2|data_out\(11),
	datad => \filter|Reg_delay_2|data_out\(9),
	combout => \filter|Mult3|mult_core|romout[2][5]~combout\);

-- Location: LCCOMB_X18_Y25_N0
\filter|Reg_delay_1|data_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_delay_1|data_out~0_combout\ = (\filter|v[5]~10_combout\ & \RST_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \filter|v[5]~10_combout\,
	datad => \RST_n~input_o\,
	combout => \filter|Reg_delay_1|data_out~0_combout\);

-- Location: FF_X18_Y25_N1
\filter|Reg_delay_1|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_delay_1|data_out~0_combout\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_delay_1|data_out\(5));

-- Location: LCCOMB_X18_Y25_N30
\filter|Reg_delay_2|data_out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_delay_2|data_out~1_combout\ = (\RST_n~input_o\ & \filter|Reg_delay_1|data_out\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datad => \filter|Reg_delay_1|data_out\(5),
	combout => \filter|Reg_delay_2|data_out~1_combout\);

-- Location: FF_X14_Y13_N3
\filter|Reg_delay_2|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \filter|Reg_delay_2|data_out~1_combout\,
	sload => VCC,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_delay_2|data_out\(5));

-- Location: LCCOMB_X13_Y13_N0
\filter|Mult4|mult_core|romout[1][8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[1][8]~combout\ = (\filter|Reg_delay_2|data_out\(7) & ((\filter|Reg_delay_2|data_out\(5) & (\filter|Reg_delay_2|data_out\(6) & !\filter|Reg_delay_2|data_out\(4))) # (!\filter|Reg_delay_2|data_out\(5) & 
-- ((\filter|Reg_delay_2|data_out\(6)) # (!\filter|Reg_delay_2|data_out\(4)))))) # (!\filter|Reg_delay_2|data_out\(7) & (\filter|Reg_delay_2|data_out\(5) $ (((!\filter|Reg_delay_2|data_out\(6) & \filter|Reg_delay_2|data_out\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(7),
	datab => \filter|Reg_delay_2|data_out\(5),
	datac => \filter|Reg_delay_2|data_out\(6),
	datad => \filter|Reg_delay_2|data_out\(4),
	combout => \filter|Mult4|mult_core|romout[1][8]~combout\);

-- Location: LCCOMB_X14_Y13_N28
\filter|Mult4|mult_core|romout[1][7]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[1][7]~1_combout\ = (\filter|Reg_delay_2|data_out\(5) & ((\filter|Reg_delay_2|data_out\(4) & ((\filter|Reg_delay_2|data_out\(6)) # (!\filter|Reg_delay_2|data_out\(7)))) # (!\filter|Reg_delay_2|data_out\(4) & 
-- (\filter|Reg_delay_2|data_out\(7) $ (\filter|Reg_delay_2|data_out\(6)))))) # (!\filter|Reg_delay_2|data_out\(5) & (\filter|Reg_delay_2|data_out\(4) $ (((\filter|Reg_delay_2|data_out\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(5),
	datab => \filter|Reg_delay_2|data_out\(4),
	datac => \filter|Reg_delay_2|data_out\(7),
	datad => \filter|Reg_delay_2|data_out\(6),
	combout => \filter|Mult4|mult_core|romout[1][7]~1_combout\);

-- Location: LCCOMB_X14_Y13_N6
\filter|Mult4|mult_core|romout[1][6]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[1][6]~2_combout\ = (\filter|Reg_delay_2|data_out\(5) & (\filter|Reg_delay_2|data_out\(7) $ (((!\filter|Reg_delay_2|data_out\(4)) # (!\filter|Reg_delay_2|data_out\(6)))))) # (!\filter|Reg_delay_2|data_out\(5) & 
-- ((\filter|Reg_delay_2|data_out\(6) & ((\filter|Reg_delay_2|data_out\(4)) # (\filter|Reg_delay_2|data_out\(7)))) # (!\filter|Reg_delay_2|data_out\(6) & (\filter|Reg_delay_2|data_out\(4) & \filter|Reg_delay_2|data_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(6),
	datab => \filter|Reg_delay_2|data_out\(5),
	datac => \filter|Reg_delay_2|data_out\(4),
	datad => \filter|Reg_delay_2|data_out\(7),
	combout => \filter|Mult4|mult_core|romout[1][6]~2_combout\);

-- Location: LCCOMB_X16_Y13_N20
\filter|Mult4|mult_core|romout[0][9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[0][9]~combout\ = (\filter|Reg_delay_2|data_out\(1) & (\filter|Reg_delay_2|data_out\(3) $ (\filter|Reg_delay_2|data_out\(2) $ (!\filter|Reg_delay_2|data_out\(0))))) # (!\filter|Reg_delay_2|data_out\(1) & 
-- ((\filter|Reg_delay_2|data_out\(2) & ((!\filter|Reg_delay_2|data_out\(0)))) # (!\filter|Reg_delay_2|data_out\(2) & (\filter|Reg_delay_2|data_out\(3) & \filter|Reg_delay_2|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(1),
	datab => \filter|Reg_delay_2|data_out\(3),
	datac => \filter|Reg_delay_2|data_out\(2),
	datad => \filter|Reg_delay_2|data_out\(0),
	combout => \filter|Mult4|mult_core|romout[0][9]~combout\);

-- Location: LCCOMB_X14_Y13_N8
\filter|Mult4|mult_core|romout[1][4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[1][4]~combout\ = (\filter|Reg_delay_2|data_out\(5) & (\filter|Reg_delay_2|data_out\(4) & ((!\filter|Reg_delay_2|data_out\(7))))) # (!\filter|Reg_delay_2|data_out\(5) & ((\filter|Reg_delay_2|data_out\(7)) # 
-- ((!\filter|Reg_delay_2|data_out\(4) & \filter|Reg_delay_2|data_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(5),
	datab => \filter|Reg_delay_2|data_out\(4),
	datac => \filter|Reg_delay_2|data_out\(6),
	datad => \filter|Reg_delay_2|data_out\(7),
	combout => \filter|Mult4|mult_core|romout[1][4]~combout\);

-- Location: LCCOMB_X14_Y13_N16
\filter|Mult4|mult_core|romout[1][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[1][3]~combout\ = \filter|Reg_delay_2|data_out\(7) $ (((!\filter|Reg_delay_2|data_out\(4) & ((\filter|Reg_delay_2|data_out\(5)) # (\filter|Reg_delay_2|data_out\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(5),
	datab => \filter|Reg_delay_2|data_out\(4),
	datac => \filter|Reg_delay_2|data_out\(7),
	datad => \filter|Reg_delay_2|data_out\(6),
	combout => \filter|Mult4|mult_core|romout[1][3]~combout\);

-- Location: LCCOMB_X16_Y13_N8
\filter|Mult4|mult_core|romout[0][6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[0][6]~combout\ = (\filter|Reg_delay_2|data_out\(1) & (\filter|Reg_delay_2|data_out\(3) $ (((!\filter|Reg_delay_2|data_out\(0)) # (!\filter|Reg_delay_2|data_out\(2)))))) # (!\filter|Reg_delay_2|data_out\(1) & 
-- ((\filter|Reg_delay_2|data_out\(2) & ((\filter|Reg_delay_2|data_out\(3)) # (\filter|Reg_delay_2|data_out\(0)))) # (!\filter|Reg_delay_2|data_out\(2) & (\filter|Reg_delay_2|data_out\(3) & \filter|Reg_delay_2|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(1),
	datab => \filter|Reg_delay_2|data_out\(2),
	datac => \filter|Reg_delay_2|data_out\(3),
	datad => \filter|Reg_delay_2|data_out\(0),
	combout => \filter|Mult4|mult_core|romout[0][6]~combout\);

-- Location: LCCOMB_X14_Y13_N26
\filter|Mult4|mult_core|romout[1][1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[1][1]~5_combout\ = \filter|Reg_delay_2|data_out\(4) $ (\filter|Reg_delay_2|data_out\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \filter|Reg_delay_2|data_out\(4),
	datad => \filter|Reg_delay_2|data_out\(5),
	combout => \filter|Mult4|mult_core|romout[1][1]~5_combout\);

-- Location: LCCOMB_X16_Y13_N0
\filter|Mult4|mult_core|romout[0][4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[0][4]~combout\ = (\filter|Reg_delay_2|data_out\(1) & (\filter|Reg_delay_2|data_out\(0) & ((!\filter|Reg_delay_2|data_out\(3))))) # (!\filter|Reg_delay_2|data_out\(1) & ((\filter|Reg_delay_2|data_out\(3)) # 
-- ((!\filter|Reg_delay_2|data_out\(0) & \filter|Reg_delay_2|data_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(1),
	datab => \filter|Reg_delay_2|data_out\(0),
	datac => \filter|Reg_delay_2|data_out\(2),
	datad => \filter|Reg_delay_2|data_out\(3),
	combout => \filter|Mult4|mult_core|romout[0][4]~combout\);

-- Location: LCCOMB_X13_Y13_N6
\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\ = CARRY((\filter|Reg_delay_2|data_out\(4) & \filter|Mult4|mult_core|romout[0][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(4),
	datab => \filter|Mult4|mult_core|romout[0][4]~combout\,
	datad => VCC,
	cout => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X13_Y13_N8
\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\ = CARRY((\filter|Mult4|mult_core|romout[0][5]~6_combout\ & (!\filter|Mult4|mult_core|romout[1][1]~5_combout\ & !\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\)) # 
-- (!\filter|Mult4|mult_core|romout[0][5]~6_combout\ & ((!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\) # (!\filter|Mult4|mult_core|romout[1][1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult4|mult_core|romout[0][5]~6_combout\,
	datab => \filter|Mult4|mult_core|romout[1][1]~5_combout\,
	datad => VCC,
	cin => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\,
	cout => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X13_Y13_N10
\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\ = CARRY((\filter|Mult4|mult_core|romout[1][2]~4_combout\ & ((\filter|Mult4|mult_core|romout[0][6]~combout\) # (!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\))) # 
-- (!\filter|Mult4|mult_core|romout[1][2]~4_combout\ & (\filter|Mult4|mult_core|romout[0][6]~combout\ & !\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult4|mult_core|romout[1][2]~4_combout\,
	datab => \filter|Mult4|mult_core|romout[0][6]~combout\,
	datad => VCC,
	cin => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\,
	cout => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\);

-- Location: LCCOMB_X13_Y13_N12
\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\ = CARRY((\filter|Mult4|mult_core|romout[0][7]~3_combout\ & (!\filter|Mult4|mult_core|romout[1][3]~combout\ & !\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\)) # 
-- (!\filter|Mult4|mult_core|romout[0][7]~3_combout\ & ((!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\) # (!\filter|Mult4|mult_core|romout[1][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult4|mult_core|romout[0][7]~3_combout\,
	datab => \filter|Mult4|mult_core|romout[1][3]~combout\,
	datad => VCC,
	cin => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\,
	cout => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X13_Y13_N20
\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = (\filter|Mult4|mult_core|romout[0][11]~combout\ & ((\filter|Mult4|mult_core|romout[1][7]~1_combout\ & (\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~13\ & VCC)) # 
-- (!\filter|Mult4|mult_core|romout[1][7]~1_combout\ & (!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~13\)))) # (!\filter|Mult4|mult_core|romout[0][11]~combout\ & ((\filter|Mult4|mult_core|romout[1][7]~1_combout\ & 
-- (!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # (!\filter|Mult4|mult_core|romout[1][7]~1_combout\ & ((\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~15\ = CARRY((\filter|Mult4|mult_core|romout[0][11]~combout\ & (!\filter|Mult4|mult_core|romout[1][7]~1_combout\ & !\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # 
-- (!\filter|Mult4|mult_core|romout[0][11]~combout\ & ((!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (!\filter|Mult4|mult_core|romout[1][7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult4|mult_core|romout[0][11]~combout\,
	datab => \filter|Mult4|mult_core|romout[1][7]~1_combout\,
	datad => VCC,
	cin => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cout => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X13_Y13_N22
\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = ((\filter|Mult4|mult_core|romout[0][12]~0_combout\ $ (\filter|Mult4|mult_core|romout[1][8]~combout\ $ (!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~15\)))) # (GND)
-- \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~17\ = CARRY((\filter|Mult4|mult_core|romout[0][12]~0_combout\ & ((\filter|Mult4|mult_core|romout[1][8]~combout\) # (!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~15\))) # 
-- (!\filter|Mult4|mult_core|romout[0][12]~0_combout\ & (\filter|Mult4|mult_core|romout[1][8]~combout\ & !\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult4|mult_core|romout[0][12]~0_combout\,
	datab => \filter|Mult4|mult_core|romout[1][8]~combout\,
	datad => VCC,
	cin => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	cout => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X18_Y16_N10
\filter|Mult4|mult_core|romout[2][2]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[2][2]~9_combout\ = \filter|Reg_delay_2|data_out\(10) $ (((\filter|Reg_delay_2|data_out\(8)) # (\filter|Reg_delay_2|data_out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filter|Reg_delay_2|data_out\(8),
	datac => \filter|Reg_delay_2|data_out\(10),
	datad => \filter|Reg_delay_2|data_out\(9),
	combout => \filter|Mult4|mult_core|romout[2][2]~9_combout\);

-- Location: LCCOMB_X17_Y16_N2
\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\ = CARRY((\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & \filter|Reg_delay_2|data_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \filter|Reg_delay_2|data_out\(8),
	datad => VCC,
	cout => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X17_Y16_N4
\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\ = CARRY((\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\filter|Mult4|mult_core|romout[2][1]~10_combout\ & 
-- !\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\)) # (!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\) # 
-- (!\filter|Mult4|mult_core|romout[2][1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datab => \filter|Mult4|mult_core|romout[2][1]~10_combout\,
	datad => VCC,
	cin => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\,
	cout => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X17_Y16_N6
\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\ = CARRY((\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & ((\filter|Mult4|mult_core|romout[2][2]~9_combout\) # 
-- (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\))) # (!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & (\filter|Mult4|mult_core|romout[2][2]~9_combout\ & 
-- !\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datab => \filter|Mult4|mult_core|romout[2][2]~9_combout\,
	datad => VCC,
	cin => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\,
	cout => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\);

-- Location: LCCOMB_X17_Y16_N8
\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\ = CARRY((\filter|Mult4|mult_core|romout[2][3]~8_combout\ & (!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & 
-- !\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\)) # (!\filter|Mult4|mult_core|romout[2][3]~8_combout\ & ((!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\) # 
-- (!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult4|mult_core|romout[2][3]~8_combout\,
	datab => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\,
	cout => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X17_Y16_N10
\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ = ((\filter|Mult4|mult_core|romout[2][4]~7_combout\ $ (\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ $ 
-- (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\)))) # (GND)
-- \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ = CARRY((\filter|Mult4|mult_core|romout[2][4]~7_combout\ & ((\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\) # 
-- (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\))) # (!\filter|Mult4|mult_core|romout[2][4]~7_combout\ & (\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & 
-- !\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult4|mult_core|romout[2][4]~7_combout\,
	datab => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\,
	combout => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	cout => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X18_Y19_N0
\filter|Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Add2~0_combout\ = (\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ $ (VCC))) # 
-- (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & VCC))
-- \filter|Add2~1\ = CARRY((\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datab => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	combout => \filter|Add2~0_combout\,
	cout => \filter|Add2~1\);

-- Location: LCCOMB_X18_Y25_N2
\filter|Reg_out|data_out[0]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_out|data_out[0]~11_combout\ = (\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & (\filter|Add2~0_combout\ $ (VCC))) # (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & 
-- (\filter|Add2~0_combout\ & VCC))
-- \filter|Reg_out|data_out[0]~12\ = CARRY((\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & \filter|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datab => \filter|Add2~0_combout\,
	datad => VCC,
	combout => \filter|Reg_out|data_out[0]~11_combout\,
	cout => \filter|Reg_out|data_out[0]~12\);

-- Location: FF_X18_Y25_N3
\filter|Reg_out|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_out|data_out[0]~11_combout\,
	sclr => \ALT_INV_RST_n~input_o\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_out|data_out\(0));

-- Location: LCCOMB_X13_Y13_N4
\filter|Mult4|mult_core|romout[1][9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[1][9]~combout\ = (\filter|Reg_delay_2|data_out\(7) & ((\filter|Reg_delay_2|data_out\(6) $ (\filter|Reg_delay_2|data_out\(4))))) # (!\filter|Reg_delay_2|data_out\(7) & ((\filter|Reg_delay_2|data_out\(5) & 
-- (\filter|Reg_delay_2|data_out\(6) $ (!\filter|Reg_delay_2|data_out\(4)))) # (!\filter|Reg_delay_2|data_out\(5) & (\filter|Reg_delay_2|data_out\(6) & !\filter|Reg_delay_2|data_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(7),
	datab => \filter|Reg_delay_2|data_out\(5),
	datac => \filter|Reg_delay_2|data_out\(6),
	datad => \filter|Reg_delay_2|data_out\(4),
	combout => \filter|Mult4|mult_core|romout[1][9]~combout\);

-- Location: LCCOMB_X13_Y13_N24
\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ = (\filter|Mult4|mult_core|romout[1][9]~combout\ & (!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~17\)) # (!\filter|Mult4|mult_core|romout[1][9]~combout\ & 
-- ((\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (GND)))
-- \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~19\ = CARRY((!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (!\filter|Mult4|mult_core|romout[1][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filter|Mult4|mult_core|romout[1][9]~combout\,
	datad => VCC,
	cin => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~17\,
	combout => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	cout => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~19\);

-- Location: LCCOMB_X17_Y16_N12
\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ = (\filter|Mult4|mult_core|romout[2][5]~15_combout\ & ((\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & 
-- (\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ & VCC)) # (!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)))) # 
-- (!\filter|Mult4|mult_core|romout[2][5]~15_combout\ & ((\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # 
-- (!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & ((\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ = CARRY((\filter|Mult4|mult_core|romout[2][5]~15_combout\ & (!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & 
-- !\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # (!\filter|Mult4|mult_core|romout[2][5]~15_combout\ & ((!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # 
-- (!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult4|mult_core|romout[2][5]~15_combout\,
	datab => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\,
	combout => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	cout => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X18_Y19_N2
\filter|Add2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Add2~2_combout\ = (\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & ((\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (\filter|Add2~1\ & VCC)) # 
-- (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (!\filter|Add2~1\)))) # (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & 
-- ((\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (!\filter|Add2~1\)) # (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & ((\filter|Add2~1\) # (GND)))))
-- \filter|Add2~3\ = CARRY((\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & !\filter|Add2~1\)) # 
-- (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & ((!\filter|Add2~1\) # (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datab => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \filter|Add2~1\,
	combout => \filter|Add2~2_combout\,
	cout => \filter|Add2~3\);

-- Location: LCCOMB_X18_Y25_N4
\filter|Reg_out|data_out[1]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_out|data_out[1]~14_combout\ = (\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & ((\filter|Add2~2_combout\ & (\filter|Reg_out|data_out[0]~12\ & VCC)) # (!\filter|Add2~2_combout\ & 
-- (!\filter|Reg_out|data_out[0]~12\)))) # (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & ((\filter|Add2~2_combout\ & (!\filter|Reg_out|data_out[0]~12\)) # (!\filter|Add2~2_combout\ & 
-- ((\filter|Reg_out|data_out[0]~12\) # (GND)))))
-- \filter|Reg_out|data_out[1]~15\ = CARRY((\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (!\filter|Add2~2_combout\ & !\filter|Reg_out|data_out[0]~12\)) # 
-- (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & ((!\filter|Reg_out|data_out[0]~12\) # (!\filter|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datab => \filter|Add2~2_combout\,
	datad => VCC,
	cin => \filter|Reg_out|data_out[0]~12\,
	combout => \filter|Reg_out|data_out[1]~14_combout\,
	cout => \filter|Reg_out|data_out[1]~15\);

-- Location: FF_X18_Y25_N5
\filter|Reg_out|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_out|data_out[1]~14_combout\,
	sclr => \ALT_INV_RST_n~input_o\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_out|data_out\(1));

-- Location: LCCOMB_X14_Y13_N30
\filter|Mult4|mult_core|romout[1][10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[1][10]~combout\ = (\filter|Reg_delay_2|data_out\(5) & ((\filter|Reg_delay_2|data_out\(4) & (!\filter|Reg_delay_2|data_out\(6) & !\filter|Reg_delay_2|data_out\(7))) # (!\filter|Reg_delay_2|data_out\(4) & 
-- (\filter|Reg_delay_2|data_out\(6) & \filter|Reg_delay_2|data_out\(7))))) # (!\filter|Reg_delay_2|data_out\(5) & (\filter|Reg_delay_2|data_out\(7) $ (((!\filter|Reg_delay_2|data_out\(4) & \filter|Reg_delay_2|data_out\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(4),
	datab => \filter|Reg_delay_2|data_out\(5),
	datac => \filter|Reg_delay_2|data_out\(6),
	datad => \filter|Reg_delay_2|data_out\(7),
	combout => \filter|Mult4|mult_core|romout[1][10]~combout\);

-- Location: LCCOMB_X13_Y13_N26
\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ = (\filter|Mult4|mult_core|romout[1][10]~combout\ & (\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~19\ $ (GND))) # (!\filter|Mult4|mult_core|romout[1][10]~combout\ & 
-- (!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~19\ & VCC))
-- \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~21\ = CARRY((\filter|Mult4|mult_core|romout[1][10]~combout\ & !\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filter|Mult4|mult_core|romout[1][10]~combout\,
	datad => VCC,
	cin => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~19\,
	combout => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	cout => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~21\);

-- Location: LCCOMB_X17_Y16_N14
\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ = ((\filter|Mult4|mult_core|romout[2][6]~16_combout\ $ (\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ $ 
-- (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ = CARRY((\filter|Mult4|mult_core|romout[2][6]~16_combout\ & ((\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\) # 
-- (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\))) # (!\filter|Mult4|mult_core|romout[2][6]~16_combout\ & (\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & 
-- !\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult4|mult_core|romout[2][6]~16_combout\,
	datab => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\,
	combout => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	cout => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X18_Y19_N4
\filter|Add2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Add2~4_combout\ = ((\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ $ (\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ $ (!\filter|Add2~3\)))) # (GND)
-- \filter|Add2~5\ = CARRY((\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & ((\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\) # (!\filter|Add2~3\))) # 
-- (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & !\filter|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datab => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \filter|Add2~3\,
	combout => \filter|Add2~4_combout\,
	cout => \filter|Add2~5\);

-- Location: LCCOMB_X18_Y25_N6
\filter|Reg_out|data_out[2]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_out|data_out[2]~16_combout\ = ((\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ $ (\filter|Add2~4_combout\ $ (!\filter|Reg_out|data_out[1]~15\)))) # (GND)
-- \filter|Reg_out|data_out[2]~17\ = CARRY((\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & ((\filter|Add2~4_combout\) # (!\filter|Reg_out|data_out[1]~15\))) # 
-- (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & (\filter|Add2~4_combout\ & !\filter|Reg_out|data_out[1]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	datab => \filter|Add2~4_combout\,
	datad => VCC,
	cin => \filter|Reg_out|data_out[1]~15\,
	combout => \filter|Reg_out|data_out[2]~16_combout\,
	cout => \filter|Reg_out|data_out[2]~17\);

-- Location: FF_X18_Y25_N7
\filter|Reg_out|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_out|data_out[2]~16_combout\,
	sclr => \ALT_INV_RST_n~input_o\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_out|data_out\(2));

-- Location: LCCOMB_X17_Y16_N28
\filter|Mult4|mult_core|romout[2][7]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[2][7]~17_combout\ = (\filter|Reg_delay_2|data_out\(10) & ((\filter|Reg_delay_2|data_out\(9) & ((\filter|Reg_delay_2|data_out\(8)) # (!\filter|Reg_delay_2|data_out\(11)))) # (!\filter|Reg_delay_2|data_out\(9) & 
-- ((!\filter|Reg_delay_2|data_out\(8)))))) # (!\filter|Reg_delay_2|data_out\(10) & (\filter|Reg_delay_2|data_out\(8) $ (((\filter|Reg_delay_2|data_out\(9) & \filter|Reg_delay_2|data_out\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(10),
	datab => \filter|Reg_delay_2|data_out\(9),
	datac => \filter|Reg_delay_2|data_out\(11),
	datad => \filter|Reg_delay_2|data_out\(8),
	combout => \filter|Mult4|mult_core|romout[2][7]~17_combout\);

-- Location: LCCOMB_X17_Y16_N16
\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ = (\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & ((\filter|Mult4|mult_core|romout[2][7]~17_combout\ & 
-- (\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ & VCC)) # (!\filter|Mult4|mult_core|romout[2][7]~17_combout\ & (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)))) # 
-- (!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & ((\filter|Mult4|mult_core|romout[2][7]~17_combout\ & (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)) # 
-- (!\filter|Mult4|mult_core|romout[2][7]~17_combout\ & ((\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ = CARRY((\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & (!\filter|Mult4|mult_core|romout[2][7]~17_combout\ & 
-- !\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)) # (!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & ((!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # 
-- (!\filter|Mult4|mult_core|romout[2][7]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	datab => \filter|Mult4|mult_core|romout[2][7]~17_combout\,
	datad => VCC,
	cin => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\,
	combout => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	cout => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X18_Y19_N6
\filter|Add2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Add2~6_combout\ = (\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & ((\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & (\filter|Add2~5\ & VCC)) # 
-- (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & (!\filter|Add2~5\)))) # (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & 
-- ((\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & (!\filter|Add2~5\)) # (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & ((\filter|Add2~5\) # (GND)))))
-- \filter|Add2~7\ = CARRY((\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & !\filter|Add2~5\)) # 
-- (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & ((!\filter|Add2~5\) # (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	datab => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \filter|Add2~5\,
	combout => \filter|Add2~6_combout\,
	cout => \filter|Add2~7\);

-- Location: LCCOMB_X18_Y25_N8
\filter|Reg_out|data_out[3]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_out|data_out[3]~18_combout\ = (\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & ((\filter|Add2~6_combout\ & (\filter|Reg_out|data_out[2]~17\ & VCC)) # (!\filter|Add2~6_combout\ & 
-- (!\filter|Reg_out|data_out[2]~17\)))) # (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & ((\filter|Add2~6_combout\ & (!\filter|Reg_out|data_out[2]~17\)) # (!\filter|Add2~6_combout\ & 
-- ((\filter|Reg_out|data_out[2]~17\) # (GND)))))
-- \filter|Reg_out|data_out[3]~19\ = CARRY((\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & (!\filter|Add2~6_combout\ & !\filter|Reg_out|data_out[2]~17\)) # 
-- (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & ((!\filter|Reg_out|data_out[2]~17\) # (!\filter|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datab => \filter|Add2~6_combout\,
	datad => VCC,
	cin => \filter|Reg_out|data_out[2]~17\,
	combout => \filter|Reg_out|data_out[3]~18_combout\,
	cout => \filter|Reg_out|data_out[3]~19\);

-- Location: FF_X18_Y25_N9
\filter|Reg_out|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_out|data_out[3]~18_combout\,
	sclr => \ALT_INV_RST_n~input_o\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_out|data_out\(3));

-- Location: LCCOMB_X17_Y24_N28
\filter|Mult2|mult_core|romout[1][12]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[1][12]~12_combout\ = (\filter|Reg_delay_1|data_out\(6) & ((\filter|Reg_delay_1|data_out\(4) & ((\filter|Reg_delay_1|data_out\(5)) # (!\filter|Reg_delay_1|data_out\(7)))) # (!\filter|Reg_delay_1|data_out\(4) & 
-- (\filter|Reg_delay_1|data_out\(5) & !\filter|Reg_delay_1|data_out\(7))))) # (!\filter|Reg_delay_1|data_out\(6) & (((!\filter|Reg_delay_1|data_out\(5) & \filter|Reg_delay_1|data_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(4),
	datab => \filter|Reg_delay_1|data_out\(6),
	datac => \filter|Reg_delay_1|data_out\(5),
	datad => \filter|Reg_delay_1|data_out\(7),
	combout => \filter|Mult2|mult_core|romout[1][12]~12_combout\);

-- Location: LCCOMB_X15_Y22_N18
\filter|Mult2|mult_core|romout[1][9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[1][9]~combout\ = (\filter|Reg_delay_1|data_out\(5) & ((\filter|Reg_delay_1|data_out\(6) & ((!\filter|Reg_delay_1|data_out\(7)) # (!\filter|Reg_delay_1|data_out\(4)))) # (!\filter|Reg_delay_1|data_out\(6) & 
-- (!\filter|Reg_delay_1|data_out\(4) & !\filter|Reg_delay_1|data_out\(7))))) # (!\filter|Reg_delay_1|data_out\(5) & (\filter|Reg_delay_1|data_out\(7) $ (((!\filter|Reg_delay_1|data_out\(6) & \filter|Reg_delay_1|data_out\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(6),
	datab => \filter|Reg_delay_1|data_out\(5),
	datac => \filter|Reg_delay_1|data_out\(4),
	datad => \filter|Reg_delay_1|data_out\(7),
	combout => \filter|Mult2|mult_core|romout[1][9]~combout\);

-- Location: LCCOMB_X15_Y22_N16
\filter|Mult2|mult_core|romout[1][8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[1][8]~combout\ = (\filter|Reg_delay_1|data_out\(6) & ((\filter|Reg_delay_1|data_out\(5) & ((\filter|Reg_delay_1|data_out\(4)) # (!\filter|Reg_delay_1|data_out\(7)))) # (!\filter|Reg_delay_1|data_out\(5) & 
-- (!\filter|Reg_delay_1|data_out\(4))))) # (!\filter|Reg_delay_1|data_out\(6) & (\filter|Reg_delay_1|data_out\(4) $ (((\filter|Reg_delay_1|data_out\(5) & \filter|Reg_delay_1|data_out\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(6),
	datab => \filter|Reg_delay_1|data_out\(5),
	datac => \filter|Reg_delay_1|data_out\(4),
	datad => \filter|Reg_delay_1|data_out\(7),
	combout => \filter|Mult2|mult_core|romout[1][8]~combout\);

-- Location: LCCOMB_X15_Y22_N6
\filter|Mult2|mult_core|romout[0][11]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[0][11]~0_combout\ = (\filter|Reg_delay_1|data_out\(3) & (\filter|Reg_delay_1|data_out\(1) $ (((!\filter|Reg_delay_1|data_out\(0) & \filter|Reg_delay_1|data_out\(2)))))) # (!\filter|Reg_delay_1|data_out\(3) & 
-- ((\filter|Reg_delay_1|data_out\(1) & ((\filter|Reg_delay_1|data_out\(2)) # (!\filter|Reg_delay_1|data_out\(0)))) # (!\filter|Reg_delay_1|data_out\(1) & ((\filter|Reg_delay_1|data_out\(0)) # (!\filter|Reg_delay_1|data_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(3),
	datab => \filter|Reg_delay_1|data_out\(1),
	datac => \filter|Reg_delay_1|data_out\(0),
	datad => \filter|Reg_delay_1|data_out\(2),
	combout => \filter|Mult2|mult_core|romout[0][11]~0_combout\);

-- Location: LCCOMB_X15_Y24_N20
\filter|Mult2|mult_core|romout[1][6]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[1][6]~1_combout\ = (\filter|Reg_delay_1|data_out\(6) & ((\filter|Reg_delay_1|data_out\(4) & (!\filter|Reg_delay_1|data_out\(5) & \filter|Reg_delay_1|data_out\(7))) # (!\filter|Reg_delay_1|data_out\(4) & 
-- (\filter|Reg_delay_1|data_out\(5))))) # (!\filter|Reg_delay_1|data_out\(6) & (\filter|Reg_delay_1|data_out\(4) $ (((!\filter|Reg_delay_1|data_out\(5) & \filter|Reg_delay_1|data_out\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(6),
	datab => \filter|Reg_delay_1|data_out\(4),
	datac => \filter|Reg_delay_1|data_out\(5),
	datad => \filter|Reg_delay_1|data_out\(7),
	combout => \filter|Mult2|mult_core|romout[1][6]~1_combout\);

-- Location: LCCOMB_X15_Y24_N30
\filter|Mult2|mult_core|romout[1][5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[1][5]~combout\ = (\filter|Reg_delay_1|data_out\(4) & ((\filter|Reg_delay_1|data_out\(5) $ (\filter|Reg_delay_1|data_out\(7))))) # (!\filter|Reg_delay_1|data_out\(4) & (!\filter|Reg_delay_1|data_out\(5) & 
-- ((\filter|Reg_delay_1|data_out\(6)) # (\filter|Reg_delay_1|data_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(6),
	datab => \filter|Reg_delay_1|data_out\(4),
	datac => \filter|Reg_delay_1|data_out\(5),
	datad => \filter|Reg_delay_1|data_out\(7),
	combout => \filter|Mult2|mult_core|romout[1][5]~combout\);

-- Location: LCCOMB_X15_Y24_N16
\filter|Mult2|mult_core|romout[1][4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[1][4]~combout\ = \filter|Reg_delay_1|data_out\(7) $ (((!\filter|Reg_delay_1|data_out\(4) & ((\filter|Reg_delay_1|data_out\(6)) # (\filter|Reg_delay_1|data_out\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(6),
	datab => \filter|Reg_delay_1|data_out\(4),
	datac => \filter|Reg_delay_1|data_out\(5),
	datad => \filter|Reg_delay_1|data_out\(7),
	combout => \filter|Mult2|mult_core|romout[1][4]~combout\);

-- Location: LCCOMB_X16_Y22_N2
\filter|Mult2|mult_core|romout[0][7]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[0][7]~5_combout\ = (\filter|Reg_delay_1|data_out\(1) & (\filter|Reg_delay_1|data_out\(3) $ (((!\filter|Reg_delay_1|data_out\(2)) # (!\filter|Reg_delay_1|data_out\(0)))))) # (!\filter|Reg_delay_1|data_out\(1) & 
-- ((\filter|Reg_delay_1|data_out\(0) & ((\filter|Reg_delay_1|data_out\(3)) # (\filter|Reg_delay_1|data_out\(2)))) # (!\filter|Reg_delay_1|data_out\(0) & (\filter|Reg_delay_1|data_out\(3) & \filter|Reg_delay_1|data_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(1),
	datab => \filter|Reg_delay_1|data_out\(0),
	datac => \filter|Reg_delay_1|data_out\(3),
	datad => \filter|Reg_delay_1|data_out\(2),
	combout => \filter|Mult2|mult_core|romout[0][7]~5_combout\);

-- Location: LCCOMB_X17_Y24_N8
\filter|Mult2|mult_core|romout[1][2]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[1][2]~6_combout\ = \filter|Reg_delay_1|data_out\(5) $ (\filter|Reg_delay_1|data_out\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \filter|Reg_delay_1|data_out\(5),
	datad => \filter|Reg_delay_1|data_out\(4),
	combout => \filter|Mult2|mult_core|romout[1][2]~6_combout\);

-- Location: LCCOMB_X15_Y22_N24
\filter|Mult2|mult_core|romout[0][5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[0][5]~combout\ = (\filter|Reg_delay_1|data_out\(1) & (((\filter|Reg_delay_1|data_out\(0) & !\filter|Reg_delay_1|data_out\(3))))) # (!\filter|Reg_delay_1|data_out\(1) & ((\filter|Reg_delay_1|data_out\(3)) # 
-- ((\filter|Reg_delay_1|data_out\(2) & !\filter|Reg_delay_1|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(2),
	datab => \filter|Reg_delay_1|data_out\(1),
	datac => \filter|Reg_delay_1|data_out\(0),
	datad => \filter|Reg_delay_1|data_out\(3),
	combout => \filter|Mult2|mult_core|romout[0][5]~combout\);

-- Location: LCCOMB_X16_Y22_N4
\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\ = CARRY((\filter|Reg_delay_1|data_out\(4) & \filter|Mult2|mult_core|romout[0][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(4),
	datab => \filter|Mult2|mult_core|romout[0][5]~combout\,
	datad => VCC,
	cout => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X16_Y22_N6
\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\ = CARRY((\filter|Mult2|mult_core|romout[0][6]~7_combout\ & (!\filter|Mult2|mult_core|romout[1][2]~6_combout\ & !\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\)) # 
-- (!\filter|Mult2|mult_core|romout[0][6]~7_combout\ & ((!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\) # (!\filter|Mult2|mult_core|romout[1][2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult2|mult_core|romout[0][6]~7_combout\,
	datab => \filter|Mult2|mult_core|romout[1][2]~6_combout\,
	datad => VCC,
	cin => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\,
	cout => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X16_Y22_N8
\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\ = CARRY((\filter|Mult2|mult_core|romout[1][3]~combout\ & ((\filter|Mult2|mult_core|romout[0][7]~5_combout\) # (!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\))) # 
-- (!\filter|Mult2|mult_core|romout[1][3]~combout\ & (\filter|Mult2|mult_core|romout[0][7]~5_combout\ & !\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult2|mult_core|romout[1][3]~combout\,
	datab => \filter|Mult2|mult_core|romout[0][7]~5_combout\,
	datad => VCC,
	cin => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\,
	cout => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\);

-- Location: LCCOMB_X16_Y22_N10
\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\ = CARRY((\filter|Mult2|mult_core|romout[0][8]~4_combout\ & (!\filter|Mult2|mult_core|romout[1][4]~combout\ & !\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\)) # 
-- (!\filter|Mult2|mult_core|romout[0][8]~4_combout\ & ((!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\) # (!\filter|Mult2|mult_core|romout[1][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult2|mult_core|romout[0][8]~4_combout\,
	datab => \filter|Mult2|mult_core|romout[1][4]~combout\,
	datad => VCC,
	cin => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\,
	cout => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X16_Y22_N12
\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\filter|Mult2|mult_core|romout[0][9]~3_combout\ $ (\filter|Mult2|mult_core|romout[1][5]~combout\ $ (!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\)))) # (GND)
-- \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\filter|Mult2|mult_core|romout[0][9]~3_combout\ & ((\filter|Mult2|mult_core|romout[1][5]~combout\) # (!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\))) # 
-- (!\filter|Mult2|mult_core|romout[0][9]~3_combout\ & (\filter|Mult2|mult_core|romout[1][5]~combout\ & !\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult2|mult_core|romout[0][9]~3_combout\,
	datab => \filter|Mult2|mult_core|romout[1][5]~combout\,
	datad => VCC,
	cin => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\,
	combout => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X16_Y22_N20
\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = ((\filter|Mult2|mult_core|romout[0][13]~9_combout\ $ (\filter|Mult2|mult_core|romout[1][9]~combout\ $ (!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~15\)))) # (GND)
-- \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~17\ = CARRY((\filter|Mult2|mult_core|romout[0][13]~9_combout\ & ((\filter|Mult2|mult_core|romout[1][9]~combout\) # (!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~15\))) # 
-- (!\filter|Mult2|mult_core|romout[0][13]~9_combout\ & (\filter|Mult2|mult_core|romout[1][9]~combout\ & !\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult2|mult_core|romout[0][13]~9_combout\,
	datab => \filter|Mult2|mult_core|romout[1][9]~combout\,
	datad => VCC,
	cin => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	cout => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X16_Y22_N26
\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ = (\filter|Mult2|mult_core|romout[1][12]~12_combout\ & (!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~21\)) # (!\filter|Mult2|mult_core|romout[1][12]~12_combout\ & 
-- ((\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~21\) # (GND)))
-- \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~23\ = CARRY((!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~21\) # (!\filter|Mult2|mult_core|romout[1][12]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filter|Mult2|mult_core|romout[1][12]~12_combout\,
	datad => VCC,
	cin => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~21\,
	combout => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	cout => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~23\);

-- Location: LCCOMB_X18_Y16_N26
\filter|Mult2|mult_core|romout[2][7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[2][7]~combout\ = (\filter|Reg_delay_1|data_out\(11) & ((\filter|Reg_delay_1|data_out\(8) & ((\filter|Reg_delay_1|data_out\(10)) # (!\filter|Reg_delay_1|data_out\(9)))) # (!\filter|Reg_delay_1|data_out\(8) & 
-- (!\filter|Reg_delay_1|data_out\(9) & \filter|Reg_delay_1|data_out\(10))))) # (!\filter|Reg_delay_1|data_out\(11) & (\filter|Reg_delay_1|data_out\(9) $ (((\filter|Reg_delay_1|data_out\(8) & \filter|Reg_delay_1|data_out\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(8),
	datab => \filter|Reg_delay_1|data_out\(11),
	datac => \filter|Reg_delay_1|data_out\(9),
	datad => \filter|Reg_delay_1|data_out\(10),
	combout => \filter|Mult2|mult_core|romout[2][7]~combout\);

-- Location: LCCOMB_X18_Y16_N0
\filter|Mult2|mult_core|romout[2][6]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[2][6]~10_combout\ = (\filter|Reg_delay_1|data_out\(8) & (\filter|Reg_delay_1|data_out\(10) $ (((\filter|Reg_delay_1|data_out\(9)) # (!\filter|Reg_delay_1|data_out\(11)))))) # (!\filter|Reg_delay_1|data_out\(8) & 
-- ((\filter|Reg_delay_1|data_out\(9) & ((\filter|Reg_delay_1|data_out\(10)))) # (!\filter|Reg_delay_1|data_out\(9) & (\filter|Reg_delay_1|data_out\(11) & !\filter|Reg_delay_1|data_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(8),
	datab => \filter|Reg_delay_1|data_out\(11),
	datac => \filter|Reg_delay_1|data_out\(9),
	datad => \filter|Reg_delay_1|data_out\(10),
	combout => \filter|Mult2|mult_core|romout[2][6]~10_combout\);

-- Location: LCCOMB_X18_Y16_N24
\filter|Mult2|mult_core|romout[2][4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[2][4]~combout\ = \filter|Reg_delay_1|data_out\(11) $ (((!\filter|Reg_delay_1|data_out\(8) & ((\filter|Reg_delay_1|data_out\(9)) # (\filter|Reg_delay_1|data_out\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(8),
	datab => \filter|Reg_delay_1|data_out\(11),
	datac => \filter|Reg_delay_1|data_out\(9),
	datad => \filter|Reg_delay_1|data_out\(10),
	combout => \filter|Mult2|mult_core|romout[2][4]~combout\);

-- Location: LCCOMB_X18_Y16_N18
\filter|Mult2|mult_core|romout[2][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[2][3]~combout\ = \filter|Reg_delay_1|data_out\(10) $ (((\filter|Reg_delay_1|data_out\(9)) # (\filter|Reg_delay_1|data_out\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filter|Reg_delay_1|data_out\(9),
	datac => \filter|Reg_delay_1|data_out\(8),
	datad => \filter|Reg_delay_1|data_out\(10),
	combout => \filter|Mult2|mult_core|romout[2][3]~combout\);

-- Location: LCCOMB_X17_Y19_N0
\filter|Mult2|mult_core|romout[2][2]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[2][2]~8_combout\ = \filter|Reg_delay_1|data_out\(8) $ (\filter|Reg_delay_1|data_out\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(8),
	datad => \filter|Reg_delay_1|data_out\(9),
	combout => \filter|Mult2|mult_core|romout[2][2]~8_combout\);

-- Location: LCCOMB_X17_Y19_N4
\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\ = CARRY((\filter|Reg_delay_1|data_out\(8) & \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(8),
	datab => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cout => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X17_Y19_N6
\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\ = CARRY((\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\filter|Mult2|mult_core|romout[2][2]~8_combout\ & 
-- !\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\)) # (!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\) # 
-- (!\filter|Mult2|mult_core|romout[2][2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datab => \filter|Mult2|mult_core|romout[2][2]~8_combout\,
	datad => VCC,
	cin => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\,
	cout => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X17_Y19_N8
\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\ = CARRY((\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & ((\filter|Mult2|mult_core|romout[2][3]~combout\) # 
-- (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\))) # (!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & (\filter|Mult2|mult_core|romout[2][3]~combout\ & 
-- !\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datab => \filter|Mult2|mult_core|romout[2][3]~combout\,
	datad => VCC,
	cin => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\,
	cout => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\);

-- Location: LCCOMB_X17_Y19_N18
\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ = (\filter|Mult2|mult_core|romout[2][8]~combout\ & ((\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & 
-- (\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ & VCC)) # (!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)))) # 
-- (!\filter|Mult2|mult_core|romout[2][8]~combout\ & ((\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)) # 
-- (!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & ((\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ = CARRY((\filter|Mult2|mult_core|romout[2][8]~combout\ & (!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & 
-- !\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)) # (!\filter|Mult2|mult_core|romout[2][8]~combout\ & ((!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # 
-- (!\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult2|mult_core|romout[2][8]~combout\,
	datab => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\,
	combout => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	cout => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X18_Y19_N8
\filter|Add2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Add2~8_combout\ = ((\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ $ (\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ $ (!\filter|Add2~7\)))) # (GND)
-- \filter|Add2~9\ = CARRY((\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & ((\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\) # (!\filter|Add2~7\))) # 
-- (!\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & (\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & !\filter|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datab => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \filter|Add2~7\,
	combout => \filter|Add2~8_combout\,
	cout => \filter|Add2~9\);

-- Location: LCCOMB_X18_Y25_N10
\filter|Reg_out|data_out[4]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_out|data_out[4]~20_combout\ = ((\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ $ (\filter|Add2~8_combout\ $ (!\filter|Reg_out|data_out[3]~19\)))) # (GND)
-- \filter|Reg_out|data_out[4]~21\ = CARRY((\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & ((\filter|Add2~8_combout\) # (!\filter|Reg_out|data_out[3]~19\))) # 
-- (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & (\filter|Add2~8_combout\ & !\filter|Reg_out|data_out[3]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datab => \filter|Add2~8_combout\,
	datad => VCC,
	cin => \filter|Reg_out|data_out[3]~19\,
	combout => \filter|Reg_out|data_out[4]~20_combout\,
	cout => \filter|Reg_out|data_out[4]~21\);

-- Location: FF_X18_Y25_N11
\filter|Reg_out|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_out|data_out[4]~20_combout\,
	sclr => \ALT_INV_RST_n~input_o\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_out|data_out\(4));

-- Location: LCCOMB_X16_Y24_N16
\filter|Mult0|mult_core|romout[2][9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[2][9]~combout\ = (\filter|v[8]~16_combout\ & ((\filter|v[10]~20_combout\ & (\filter|v[9]~18_combout\ & !\filter|v[11]~22_combout\)) # (!\filter|v[10]~20_combout\ & ((\filter|v[11]~22_combout\))))) # 
-- (!\filter|v[8]~16_combout\ & (\filter|v[10]~20_combout\ $ (((\filter|v[9]~18_combout\ & !\filter|v[11]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[8]~16_combout\,
	datab => \filter|v[10]~20_combout\,
	datac => \filter|v[9]~18_combout\,
	datad => \filter|v[11]~22_combout\,
	combout => \filter|Mult0|mult_core|romout[2][9]~combout\);

-- Location: LCCOMB_X15_Y24_N22
\filter|Mult0|mult_core|romout[1][12]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[1][12]~17_combout\ = (\filter|v[7]~14_combout\ & ((\filter|v[5]~10_combout\) # (\filter|v[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filter|v[5]~10_combout\,
	datac => \filter|v[7]~14_combout\,
	datad => \filter|v[6]~12_combout\,
	combout => \filter|Mult0|mult_core|romout[1][12]~17_combout\);

-- Location: LCCOMB_X15_Y24_N28
\filter|Mult0|mult_core|romout[1][11]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[1][11]~16_combout\ = (\filter|v[5]~10_combout\ & (\filter|v[6]~12_combout\ & ((\filter|v[4]~8_combout\) # (!\filter|v[7]~14_combout\)))) # (!\filter|v[5]~10_combout\ & ((\filter|v[7]~14_combout\ & 
-- ((!\filter|v[6]~12_combout\))) # (!\filter|v[7]~14_combout\ & (\filter|v[4]~8_combout\ & \filter|v[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[4]~8_combout\,
	datab => \filter|v[5]~10_combout\,
	datac => \filter|v[7]~14_combout\,
	datad => \filter|v[6]~12_combout\,
	combout => \filter|Mult0|mult_core|romout[1][11]~16_combout\);

-- Location: LCCOMB_X15_Y25_N6
\filter|Mult0|mult_core|romout[0][12]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[0][12]~1_combout\ = (\filter|v[3]~6_combout\ & ((\filter|v[1]~2_combout\) # (\filter|v[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filter|v[1]~2_combout\,
	datac => \filter|v[2]~4_combout\,
	datad => \filter|v[3]~6_combout\,
	combout => \filter|Mult0|mult_core|romout[0][12]~1_combout\);

-- Location: LCCOMB_X15_Y25_N24
\filter|Mult0|mult_core|romout[0][11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[0][11]~combout\ = (\filter|v[1]~2_combout\ & (\filter|v[2]~4_combout\ & ((\filter|v[0]~0_combout\) # (!\filter|v[3]~6_combout\)))) # (!\filter|v[1]~2_combout\ & ((\filter|v[2]~4_combout\ & (\filter|v[0]~0_combout\ & 
-- !\filter|v[3]~6_combout\)) # (!\filter|v[2]~4_combout\ & ((\filter|v[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[0]~0_combout\,
	datab => \filter|v[1]~2_combout\,
	datac => \filter|v[2]~4_combout\,
	datad => \filter|v[3]~6_combout\,
	combout => \filter|Mult0|mult_core|romout[0][11]~combout\);

-- Location: LCCOMB_X16_Y23_N2
\filter|Mult0|mult_core|romout[1][6]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[1][6]~3_combout\ = (\filter|v[5]~10_combout\ & (\filter|v[7]~14_combout\ $ (((!\filter|v[4]~8_combout\) # (!\filter|v[6]~12_combout\))))) # (!\filter|v[5]~10_combout\ & ((\filter|v[6]~12_combout\ & ((\filter|v[4]~8_combout\) 
-- # (\filter|v[7]~14_combout\))) # (!\filter|v[6]~12_combout\ & (\filter|v[4]~8_combout\ & \filter|v[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[6]~12_combout\,
	datab => \filter|v[5]~10_combout\,
	datac => \filter|v[4]~8_combout\,
	datad => \filter|v[7]~14_combout\,
	combout => \filter|Mult0|mult_core|romout[1][6]~3_combout\);

-- Location: LCCOMB_X15_Y25_N4
\filter|Mult0|mult_core|romout[0][9]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[0][9]~5_combout\ = (\filter|v[0]~0_combout\ & ((\filter|v[2]~4_combout\ & (\filter|v[1]~2_combout\ & !\filter|v[3]~6_combout\)) # (!\filter|v[2]~4_combout\ & ((\filter|v[3]~6_combout\))))) # (!\filter|v[0]~0_combout\ & 
-- (\filter|v[2]~4_combout\ $ (((\filter|v[1]~2_combout\ & !\filter|v[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[0]~0_combout\,
	datab => \filter|v[1]~2_combout\,
	datac => \filter|v[2]~4_combout\,
	datad => \filter|v[3]~6_combout\,
	combout => \filter|Mult0|mult_core|romout[0][9]~5_combout\);

-- Location: LCCOMB_X16_Y25_N2
\filter|Mult0|mult_core|romout[1][4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[1][4]~combout\ = (\filter|v[5]~10_combout\ & (!\filter|v[7]~14_combout\ & (\filter|v[4]~8_combout\))) # (!\filter|v[5]~10_combout\ & ((\filter|v[7]~14_combout\) # ((!\filter|v[4]~8_combout\ & \filter|v[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[5]~10_combout\,
	datab => \filter|v[7]~14_combout\,
	datac => \filter|v[4]~8_combout\,
	datad => \filter|v[6]~12_combout\,
	combout => \filter|Mult0|mult_core|romout[1][4]~combout\);

-- Location: LCCOMB_X16_Y25_N30
\filter|Mult0|mult_core|romout[1][3]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[1][3]~7_combout\ = \filter|v[7]~14_combout\ $ (((!\filter|v[4]~8_combout\ & ((\filter|v[5]~10_combout\) # (\filter|v[6]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[5]~10_combout\,
	datab => \filter|v[4]~8_combout\,
	datac => \filter|v[7]~14_combout\,
	datad => \filter|v[6]~12_combout\,
	combout => \filter|Mult0|mult_core|romout[1][3]~7_combout\);

-- Location: LCCOMB_X15_Y25_N18
\filter|Mult0|mult_core|romout[0][6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[0][6]~combout\ = (\filter|v[1]~2_combout\ & (\filter|v[3]~6_combout\ $ (((!\filter|v[2]~4_combout\) # (!\filter|v[0]~0_combout\))))) # (!\filter|v[1]~2_combout\ & ((\filter|v[0]~0_combout\ & ((\filter|v[2]~4_combout\) # 
-- (\filter|v[3]~6_combout\))) # (!\filter|v[0]~0_combout\ & (\filter|v[2]~4_combout\ & \filter|v[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[0]~0_combout\,
	datab => \filter|v[1]~2_combout\,
	datac => \filter|v[2]~4_combout\,
	datad => \filter|v[3]~6_combout\,
	combout => \filter|Mult0|mult_core|romout[0][6]~combout\);

-- Location: LCCOMB_X16_Y23_N30
\filter|Mult0|mult_core|romout[1][1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[1][1]~10_combout\ = \filter|v[4]~8_combout\ $ (\filter|v[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \filter|v[4]~8_combout\,
	datad => \filter|v[5]~10_combout\,
	combout => \filter|Mult0|mult_core|romout[1][1]~10_combout\);

-- Location: LCCOMB_X15_Y25_N22
\filter|Mult0|mult_core|romout[0][4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[0][4]~combout\ = (\filter|v[0]~0_combout\ & (\filter|v[1]~2_combout\ $ (((\filter|v[3]~6_combout\))))) # (!\filter|v[0]~0_combout\ & (!\filter|v[1]~2_combout\ & ((\filter|v[2]~4_combout\) # (\filter|v[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[0]~0_combout\,
	datab => \filter|v[1]~2_combout\,
	datac => \filter|v[2]~4_combout\,
	datad => \filter|v[3]~6_combout\,
	combout => \filter|Mult0|mult_core|romout[0][4]~combout\);

-- Location: LCCOMB_X16_Y25_N4
\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\ = CARRY((\filter|v[4]~8_combout\ & \filter|Mult0|mult_core|romout[0][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[4]~8_combout\,
	datab => \filter|Mult0|mult_core|romout[0][4]~combout\,
	datad => VCC,
	cout => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X16_Y25_N6
\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\ = CARRY((\filter|Mult0|mult_core|romout[0][5]~11_combout\ & (!\filter|Mult0|mult_core|romout[1][1]~10_combout\ & !\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\)) # 
-- (!\filter|Mult0|mult_core|romout[0][5]~11_combout\ & ((!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\) # (!\filter|Mult0|mult_core|romout[1][1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult0|mult_core|romout[0][5]~11_combout\,
	datab => \filter|Mult0|mult_core|romout[1][1]~10_combout\,
	datad => VCC,
	cin => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\,
	cout => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X16_Y25_N8
\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\ = CARRY((\filter|Mult0|mult_core|romout[1][2]~9_combout\ & ((\filter|Mult0|mult_core|romout[0][6]~combout\) # (!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\))) # 
-- (!\filter|Mult0|mult_core|romout[1][2]~9_combout\ & (\filter|Mult0|mult_core|romout[0][6]~combout\ & !\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult0|mult_core|romout[1][2]~9_combout\,
	datab => \filter|Mult0|mult_core|romout[0][6]~combout\,
	datad => VCC,
	cin => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\,
	cout => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\);

-- Location: LCCOMB_X16_Y25_N10
\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\ = CARRY((\filter|Mult0|mult_core|romout[0][7]~8_combout\ & (!\filter|Mult0|mult_core|romout[1][3]~7_combout\ & !\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\)) # 
-- (!\filter|Mult0|mult_core|romout[0][7]~8_combout\ & ((!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\) # (!\filter|Mult0|mult_core|romout[1][3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult0|mult_core|romout[0][7]~8_combout\,
	datab => \filter|Mult0|mult_core|romout[1][3]~7_combout\,
	datad => VCC,
	cin => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\,
	cout => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X16_Y25_N18
\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = (\filter|Mult0|mult_core|romout[1][7]~2_combout\ & ((\filter|Mult0|mult_core|romout[0][11]~combout\ & (\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ & VCC)) # 
-- (!\filter|Mult0|mult_core|romout[0][11]~combout\ & (!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)))) # (!\filter|Mult0|mult_core|romout[1][7]~2_combout\ & ((\filter|Mult0|mult_core|romout[0][11]~combout\ & 
-- (!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # (!\filter|Mult0|mult_core|romout[0][11]~combout\ & ((\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ = CARRY((\filter|Mult0|mult_core|romout[1][7]~2_combout\ & (!\filter|Mult0|mult_core|romout[0][11]~combout\ & !\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # 
-- (!\filter|Mult0|mult_core|romout[1][7]~2_combout\ & ((!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (!\filter|Mult0|mult_core|romout[0][11]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult0|mult_core|romout[1][7]~2_combout\,
	datab => \filter|Mult0|mult_core|romout[0][11]~combout\,
	datad => VCC,
	cin => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cout => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X16_Y25_N20
\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = ((\filter|Mult0|mult_core|romout[1][8]~0_combout\ $ (\filter|Mult0|mult_core|romout[0][12]~1_combout\ $ (!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\)))) # (GND)
-- \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ = CARRY((\filter|Mult0|mult_core|romout[1][8]~0_combout\ & ((\filter|Mult0|mult_core|romout[0][12]~1_combout\) # (!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\))) # 
-- (!\filter|Mult0|mult_core|romout[1][8]~0_combout\ & (\filter|Mult0|mult_core|romout[0][12]~1_combout\ & !\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult0|mult_core|romout[1][8]~0_combout\,
	datab => \filter|Mult0|mult_core|romout[0][12]~1_combout\,
	datad => VCC,
	cin => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	cout => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X16_Y25_N22
\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ = (\filter|Mult0|mult_core|romout[1][9]~13_combout\ & (!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\)) # (!\filter|Mult0|mult_core|romout[1][9]~13_combout\ & 
-- ((\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (GND)))
-- \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ = CARRY((!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (!\filter|Mult0|mult_core|romout[1][9]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult0|mult_core|romout[1][9]~13_combout\,
	datad => VCC,
	cin => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\,
	combout => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	cout => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\);

-- Location: LCCOMB_X16_Y25_N24
\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ = (\filter|Mult0|mult_core|romout[1][10]~15_combout\ & (\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ $ (GND))) # (!\filter|Mult0|mult_core|romout[1][10]~15_combout\ 
-- & (!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ & VCC))
-- \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\ = CARRY((\filter|Mult0|mult_core|romout[1][10]~15_combout\ & !\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult0|mult_core|romout[1][10]~15_combout\,
	datad => VCC,
	cin => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\,
	combout => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	cout => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\);

-- Location: LCCOMB_X16_Y25_N28
\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ = \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\ $ (!\filter|Mult0|mult_core|romout[1][12]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \filter|Mult0|mult_core|romout[1][12]~17_combout\,
	cin => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\,
	combout => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\);

-- Location: LCCOMB_X16_Y24_N28
\filter|Mult0|mult_core|romout[2][7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[2][7]~combout\ = (\filter|v[8]~16_combout\ & ((\filter|v[9]~18_combout\ & ((\filter|v[10]~20_combout\) # (!\filter|v[11]~22_combout\))) # (!\filter|v[9]~18_combout\ & (!\filter|v[10]~20_combout\)))) # 
-- (!\filter|v[8]~16_combout\ & (\filter|v[10]~20_combout\ $ (((\filter|v[9]~18_combout\ & \filter|v[11]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[8]~16_combout\,
	datab => \filter|v[9]~18_combout\,
	datac => \filter|v[10]~20_combout\,
	datad => \filter|v[11]~22_combout\,
	combout => \filter|Mult0|mult_core|romout[2][7]~combout\);

-- Location: LCCOMB_X16_Y24_N14
\filter|Mult0|mult_core|romout[2][2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[2][2]~combout\ = \filter|v[10]~20_combout\ $ (((\filter|v[9]~18_combout\) # (\filter|v[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|v[9]~18_combout\,
	datac => \filter|v[10]~20_combout\,
	datad => \filter|v[8]~16_combout\,
	combout => \filter|Mult0|mult_core|romout[2][2]~combout\);

-- Location: LCCOMB_X16_Y24_N0
\filter|Mult0|mult_core|romout[2][1]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[2][1]~12_combout\ = \filter|v[9]~18_combout\ $ (\filter|v[8]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \filter|v[9]~18_combout\,
	datad => \filter|v[8]~16_combout\,
	combout => \filter|Mult0|mult_core|romout[2][1]~12_combout\);

-- Location: LCCOMB_X17_Y25_N0
\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\ = CARRY((\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & \filter|v[8]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \filter|v[8]~16_combout\,
	datad => VCC,
	cout => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X17_Y25_N2
\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\ = CARRY((\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\filter|Mult0|mult_core|romout[2][1]~12_combout\ & 
-- !\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\)) # (!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\) # 
-- (!\filter|Mult0|mult_core|romout[2][1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datab => \filter|Mult0|mult_core|romout[2][1]~12_combout\,
	datad => VCC,
	cin => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1_cout\,
	cout => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X17_Y25_N4
\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\ = CARRY((\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & ((\filter|Mult0|mult_core|romout[2][2]~combout\) # 
-- (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\))) # (!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & (\filter|Mult0|mult_core|romout[2][2]~combout\ & 
-- !\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datab => \filter|Mult0|mult_core|romout[2][2]~combout\,
	datad => VCC,
	cin => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_cout\,
	cout => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\);

-- Location: LCCOMB_X17_Y25_N6
\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\ = CARRY((\filter|Mult0|mult_core|romout[2][3]~combout\ & (!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & 
-- !\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\)) # (!\filter|Mult0|mult_core|romout[2][3]~combout\ & ((!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\) # 
-- (!\filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult0|mult_core|romout[2][3]~combout\,
	datab => \filter|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_cout\,
	cout => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X17_Y25_N18
\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ = (\filter|Mult0|mult_core|romout[2][9]~combout\ & (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\)) # 
-- (!\filter|Mult0|mult_core|romout[2][9]~combout\ & ((\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\) # (GND)))
-- \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ = CARRY((!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\) # (!\filter|Mult0|mult_core|romout[2][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filter|Mult0|mult_core|romout[2][9]~combout\,
	datad => VCC,
	cin => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\,
	combout => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	cout => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\);

-- Location: LCCOMB_X18_Y25_N12
\filter|Reg_out|data_out[5]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_out|data_out[5]~22_combout\ = (\filter|Add2~10_combout\ & ((\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (\filter|Reg_out|data_out[4]~21\ & VCC)) # 
-- (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (!\filter|Reg_out|data_out[4]~21\)))) # (!\filter|Add2~10_combout\ & ((\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & 
-- (!\filter|Reg_out|data_out[4]~21\)) # (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((\filter|Reg_out|data_out[4]~21\) # (GND)))))
-- \filter|Reg_out|data_out[5]~23\ = CARRY((\filter|Add2~10_combout\ & (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & !\filter|Reg_out|data_out[4]~21\)) # (!\filter|Add2~10_combout\ & 
-- ((!\filter|Reg_out|data_out[4]~21\) # (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Add2~10_combout\,
	datab => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \filter|Reg_out|data_out[4]~21\,
	combout => \filter|Reg_out|data_out[5]~22_combout\,
	cout => \filter|Reg_out|data_out[5]~23\);

-- Location: FF_X18_Y25_N13
\filter|Reg_out|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_out|data_out[5]~22_combout\,
	sclr => \ALT_INV_RST_n~input_o\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_out|data_out\(5));

-- Location: LCCOMB_X17_Y25_N20
\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ = (\filter|Mult0|mult_core|romout[2][10]~combout\ & (\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ $ (GND))) # 
-- (!\filter|Mult0|mult_core|romout[2][10]~combout\ & (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ & VCC))
-- \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\ = CARRY((\filter|Mult0|mult_core|romout[2][10]~combout\ & !\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult0|mult_core|romout[2][10]~combout\,
	datad => VCC,
	cin => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\,
	combout => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\,
	cout => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\);

-- Location: LCCOMB_X18_Y25_N14
\filter|Reg_out|data_out[6]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_out|data_out[6]~24_combout\ = ((\filter|Add2~12_combout\ $ (\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ $ (!\filter|Reg_out|data_out[5]~23\)))) # (GND)
-- \filter|Reg_out|data_out[6]~25\ = CARRY((\filter|Add2~12_combout\ & ((\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\) # (!\filter|Reg_out|data_out[5]~23\))) # (!\filter|Add2~12_combout\ & 
-- (\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ & !\filter|Reg_out|data_out[5]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Add2~12_combout\,
	datab => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \filter|Reg_out|data_out[5]~23\,
	combout => \filter|Reg_out|data_out[6]~24_combout\,
	cout => \filter|Reg_out|data_out[6]~25\);

-- Location: FF_X18_Y25_N15
\filter|Reg_out|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_out|data_out[6]~24_combout\,
	sclr => \ALT_INV_RST_n~input_o\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_out|data_out\(6));

-- Location: LCCOMB_X17_Y25_N22
\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ = (\filter|Mult0|mult_core|romout[2][11]~18_combout\ & (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\)) # 
-- (!\filter|Mult0|mult_core|romout[2][11]~18_combout\ & ((\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\) # (GND)))
-- \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\ = CARRY((!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\) # (!\filter|Mult0|mult_core|romout[2][11]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult0|mult_core|romout[2][11]~18_combout\,
	datad => VCC,
	cin => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\,
	combout => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\,
	cout => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\);

-- Location: LCCOMB_X18_Y25_N16
\filter|Reg_out|data_out[7]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_out|data_out[7]~26_combout\ = (\filter|Add2~14_combout\ & ((\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ & (\filter|Reg_out|data_out[6]~25\ & VCC)) # 
-- (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ & (!\filter|Reg_out|data_out[6]~25\)))) # (!\filter|Add2~14_combout\ & ((\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ & 
-- (!\filter|Reg_out|data_out[6]~25\)) # (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ & ((\filter|Reg_out|data_out[6]~25\) # (GND)))))
-- \filter|Reg_out|data_out[7]~27\ = CARRY((\filter|Add2~14_combout\ & (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ & !\filter|Reg_out|data_out[6]~25\)) # (!\filter|Add2~14_combout\ & 
-- ((!\filter|Reg_out|data_out[6]~25\) # (!\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Add2~14_combout\,
	datab => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \filter|Reg_out|data_out[6]~25\,
	combout => \filter|Reg_out|data_out[7]~26_combout\,
	cout => \filter|Reg_out|data_out[7]~27\);

-- Location: FF_X18_Y25_N17
\filter|Reg_out|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_out|data_out[7]~26_combout\,
	sclr => \ALT_INV_RST_n~input_o\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_out|data_out\(7));

-- Location: LCCOMB_X16_Y24_N22
\filter|Mult0|mult_core|romout[2][12]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|romout[2][12]~19_combout\ = (\filter|v[11]~22_combout\ & ((\filter|v[10]~20_combout\) # (\filter|v[9]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filter|v[10]~20_combout\,
	datac => \filter|v[9]~18_combout\,
	datad => \filter|v[11]~22_combout\,
	combout => \filter|Mult0|mult_core|romout[2][12]~19_combout\);

-- Location: LCCOMB_X17_Y25_N24
\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ = \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\ $ (!\filter|Mult0|mult_core|romout[2][12]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \filter|Mult0|mult_core|romout[2][12]~19_combout\,
	cin => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\,
	combout => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\);

-- Location: LCCOMB_X18_Y25_N18
\filter|Reg_out|data_out[8]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_out|data_out[8]~28_combout\ = ((\filter|Add2~16_combout\ $ (\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ $ (!\filter|Reg_out|data_out[7]~27\)))) # (GND)
-- \filter|Reg_out|data_out[8]~29\ = CARRY((\filter|Add2~16_combout\ & ((\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\) # (!\filter|Reg_out|data_out[7]~27\))) # (!\filter|Add2~16_combout\ & 
-- (\filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ & !\filter|Reg_out|data_out[7]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Add2~16_combout\,
	datab => \filter|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \filter|Reg_out|data_out[7]~27\,
	combout => \filter|Reg_out|data_out[8]~28_combout\,
	cout => \filter|Reg_out|data_out[8]~29\);

-- Location: FF_X18_Y25_N19
\filter|Reg_out|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_out|data_out[8]~28_combout\,
	sclr => \ALT_INV_RST_n~input_o\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_out|data_out\(8));

-- Location: LCCOMB_X18_Y16_N22
\filter|Mult2|mult_core|romout[2][13]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[2][13]~14_combout\ = (\filter|Reg_delay_1|data_out\(11) & ((\filter|Reg_delay_1|data_out\(10)) # (\filter|Reg_delay_1|data_out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(10),
	datab => \filter|Reg_delay_1|data_out\(11),
	datac => \filter|Reg_delay_1|data_out\(9),
	combout => \filter|Mult2|mult_core|romout[2][13]~14_combout\);

-- Location: LCCOMB_X18_Y16_N12
\filter|Mult2|mult_core|romout[2][12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[2][12]~combout\ = (\filter|Reg_delay_1|data_out\(11) & ((\filter|Reg_delay_1|data_out\(9) & (\filter|Reg_delay_1|data_out\(8) & \filter|Reg_delay_1|data_out\(10))) # (!\filter|Reg_delay_1|data_out\(9) & 
-- ((!\filter|Reg_delay_1|data_out\(10)))))) # (!\filter|Reg_delay_1|data_out\(11) & (\filter|Reg_delay_1|data_out\(10) & ((\filter|Reg_delay_1|data_out\(8)) # (\filter|Reg_delay_1|data_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(8),
	datab => \filter|Reg_delay_1|data_out\(11),
	datac => \filter|Reg_delay_1|data_out\(9),
	datad => \filter|Reg_delay_1|data_out\(10),
	combout => \filter|Mult2|mult_core|romout[2][12]~combout\);

-- Location: LCCOMB_X18_Y16_N16
\filter|Mult2|mult_core|romout[2][10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[2][10]~combout\ = (\filter|Reg_delay_1|data_out\(8) & ((\filter|Reg_delay_1|data_out\(11) & ((!\filter|Reg_delay_1|data_out\(10)))) # (!\filter|Reg_delay_1|data_out\(11) & (\filter|Reg_delay_1|data_out\(9) & 
-- \filter|Reg_delay_1|data_out\(10))))) # (!\filter|Reg_delay_1|data_out\(8) & (\filter|Reg_delay_1|data_out\(10) $ (((!\filter|Reg_delay_1|data_out\(11) & \filter|Reg_delay_1|data_out\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_1|data_out\(8),
	datab => \filter|Reg_delay_1|data_out\(11),
	datac => \filter|Reg_delay_1|data_out\(9),
	datad => \filter|Reg_delay_1|data_out\(10),
	combout => \filter|Mult2|mult_core|romout[2][10]~combout\);

-- Location: LCCOMB_X17_Y24_N22
\filter|Mult2|mult_core|romout[1][13]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|romout[1][13]~13_combout\ = (\filter|Reg_delay_1|data_out\(7) & ((\filter|Reg_delay_1|data_out\(6)) # (\filter|Reg_delay_1|data_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filter|Reg_delay_1|data_out\(6),
	datac => \filter|Reg_delay_1|data_out\(5),
	datad => \filter|Reg_delay_1|data_out\(7),
	combout => \filter|Mult2|mult_core|romout[1][13]~13_combout\);

-- Location: LCCOMB_X16_Y22_N28
\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ = \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~23\ $ (!\filter|Mult2|mult_core|romout[1][13]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \filter|Mult2|mult_core|romout[1][13]~13_combout\,
	cin => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~23\,
	combout => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\);

-- Location: LCCOMB_X17_Y19_N20
\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ = ((\filter|Mult2|mult_core|romout[2][9]~combout\ $ (\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ $ 
-- (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\)))) # (GND)
-- \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ = CARRY((\filter|Mult2|mult_core|romout[2][9]~combout\ & ((\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\) # 
-- (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\))) # (!\filter|Mult2|mult_core|romout[2][9]~combout\ & (\filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ & 
-- !\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult2|mult_core|romout[2][9]~combout\,
	datab => \filter|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\,
	combout => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	cout => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X17_Y19_N22
\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ = (\filter|Mult2|mult_core|romout[2][10]~combout\ & (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\)) # 
-- (!\filter|Mult2|mult_core|romout[2][10]~combout\ & ((\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\) # (GND)))
-- \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ = CARRY((!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\) # (!\filter|Mult2|mult_core|romout[2][10]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filter|Mult2|mult_core|romout[2][10]~combout\,
	datad => VCC,
	cin => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\,
	combout => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	cout => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\);

-- Location: LCCOMB_X17_Y19_N24
\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ = (\filter|Mult2|mult_core|romout[2][11]~combout\ & (\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ $ (GND))) # 
-- (!\filter|Mult2|mult_core|romout[2][11]~combout\ & (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ & VCC))
-- \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\ = CARRY((\filter|Mult2|mult_core|romout[2][11]~combout\ & !\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Mult2|mult_core|romout[2][11]~combout\,
	datad => VCC,
	cin => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\,
	combout => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\,
	cout => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\);

-- Location: LCCOMB_X17_Y19_N28
\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ = \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\ $ (!\filter|Mult2|mult_core|romout[2][13]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \filter|Mult2|mult_core|romout[2][13]~14_combout\,
	cin => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\,
	combout => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\);

-- Location: LCCOMB_X16_Y16_N8
\filter|Mult4|mult_core|romout[2][12]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[2][12]~14_combout\ = (\filter|Reg_delay_2|data_out\(11) & ((\filter|Reg_delay_2|data_out\(9)) # (\filter|Reg_delay_2|data_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(9),
	datac => \filter|Reg_delay_2|data_out\(11),
	datad => \filter|Reg_delay_2|data_out\(10),
	combout => \filter|Mult4|mult_core|romout[2][12]~14_combout\);

-- Location: LCCOMB_X16_Y16_N22
\filter|Mult4|mult_core|romout[2][9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[2][9]~combout\ = (\filter|Reg_delay_2|data_out\(9) & (\filter|Reg_delay_2|data_out\(11) $ (\filter|Reg_delay_2|data_out\(8) $ (!\filter|Reg_delay_2|data_out\(10))))) # (!\filter|Reg_delay_2|data_out\(9) & 
-- ((\filter|Reg_delay_2|data_out\(8) & (\filter|Reg_delay_2|data_out\(11) & !\filter|Reg_delay_2|data_out\(10))) # (!\filter|Reg_delay_2|data_out\(8) & ((\filter|Reg_delay_2|data_out\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(9),
	datab => \filter|Reg_delay_2|data_out\(11),
	datac => \filter|Reg_delay_2|data_out\(8),
	datad => \filter|Reg_delay_2|data_out\(10),
	combout => \filter|Mult4|mult_core|romout[2][9]~combout\);

-- Location: LCCOMB_X14_Y14_N18
\filter|Mult4|mult_core|romout[1][12]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|romout[1][12]~11_combout\ = (\filter|Reg_delay_2|data_out\(7) & ((\filter|Reg_delay_2|data_out\(5)) # (\filter|Reg_delay_2|data_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filter|Reg_delay_2|data_out\(5),
	datac => \filter|Reg_delay_2|data_out\(7),
	datad => \filter|Reg_delay_2|data_out\(6),
	combout => \filter|Mult4|mult_core|romout[1][12]~11_combout\);

-- Location: LCCOMB_X13_Y13_N30
\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ = \filter|Mult4|mult_core|romout[1][12]~11_combout\ $ (!\filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filter|Mult4|mult_core|romout[1][12]~11_combout\,
	cin => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~23\,
	combout => \filter|Mult4|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\);

-- Location: LCCOMB_X17_Y16_N26
\filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ = \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\ $ (!\filter|Mult4|mult_core|romout[2][12]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \filter|Mult4|mult_core|romout[2][12]~14_combout\,
	cin => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\,
	combout => \filter|Mult4|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\);

-- Location: LCCOMB_X18_Y19_N18
\filter|Add2~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Add2~18_combout\ = (\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ & (!\filter|Add2~17\)) # (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ & ((\filter|Add2~17\) # (GND)))
-- \filter|Add2~19\ = CARRY((!\filter|Add2~17\) # (!\filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filter|Mult2|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \filter|Add2~17\,
	combout => \filter|Add2~18_combout\,
	cout => \filter|Add2~19\);

-- Location: LCCOMB_X18_Y25_N20
\filter|Reg_out|data_out[9]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_out|data_out[9]~30_combout\ = (\filter|Add2~18_combout\ & (!\filter|Reg_out|data_out[8]~29\)) # (!\filter|Add2~18_combout\ & ((\filter|Reg_out|data_out[8]~29\) # (GND)))
-- \filter|Reg_out|data_out[9]~31\ = CARRY((!\filter|Reg_out|data_out[8]~29\) # (!\filter|Add2~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \filter|Add2~18_combout\,
	datad => VCC,
	cin => \filter|Reg_out|data_out[8]~29\,
	combout => \filter|Reg_out|data_out[9]~30_combout\,
	cout => \filter|Reg_out|data_out[9]~31\);

-- Location: FF_X18_Y25_N21
\filter|Reg_out|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_out|data_out[9]~30_combout\,
	sclr => \ALT_INV_RST_n~input_o\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_out|data_out\(9));

-- Location: LCCOMB_X18_Y19_N20
\filter|Add2~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Add2~20_combout\ = !\filter|Add2~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \filter|Add2~19\,
	combout => \filter|Add2~20_combout\);

-- Location: LCCOMB_X18_Y25_N22
\filter|Reg_out|data_out[10]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_out|data_out[10]~32_combout\ = \filter|Reg_out|data_out[9]~31\ $ (!\filter|Add2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \filter|Add2~20_combout\,
	cin => \filter|Reg_out|data_out[9]~31\,
	combout => \filter|Reg_out|data_out[10]~32_combout\);

-- Location: FF_X18_Y25_N23
\filter|Reg_out|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_out|data_out[10]~32_combout\,
	sclr => \ALT_INV_RST_n~input_o\,
	ena => \filter|Reg_out|data_out[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_out|data_out\(10));

-- Location: LCCOMB_X18_Y25_N24
\filter|Reg_ctrl_2|data_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \filter|Reg_ctrl_2|data_out~0_combout\ = (\RST_n~input_o\ & \filter|Reg_ctrl_1|data_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datad => \filter|Reg_ctrl_1|data_out\(0),
	combout => \filter|Reg_ctrl_2|data_out~0_combout\);

-- Location: FF_X18_Y25_N25
\filter|Reg_ctrl_2|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \filter|Reg_ctrl_2|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \filter|Reg_ctrl_2|data_out\(0));
END structure;


