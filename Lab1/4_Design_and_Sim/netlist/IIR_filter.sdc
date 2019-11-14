###################################################################

# Created by write_sdc on Wed Nov 13 20:12:57 2019

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_load -pin_load 3.40189 [get_ports {DOUT[11]}]
set_load -pin_load 3.40189 [get_ports {DOUT[10]}]
set_load -pin_load 3.40189 [get_ports {DOUT[9]}]
set_load -pin_load 3.40189 [get_ports {DOUT[8]}]
set_load -pin_load 3.40189 [get_ports {DOUT[7]}]
set_load -pin_load 3.40189 [get_ports {DOUT[6]}]
set_load -pin_load 3.40189 [get_ports {DOUT[5]}]
set_load -pin_load 3.40189 [get_ports {DOUT[4]}]
set_load -pin_load 3.40189 [get_ports {DOUT[3]}]
set_load -pin_load 3.40189 [get_ports {DOUT[2]}]
set_load -pin_load 3.40189 [get_ports {DOUT[1]}]
set_load -pin_load 3.40189 [get_ports {DOUT[0]}]
set_load -pin_load 3.40189 [get_ports VOUT]
create_clock [get_ports CLK]  -name MY_CLK  -period 11.4  -waveform {0 5.7}
set_clock_uncertainty 0.07  [get_clocks MY_CLK]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN[11]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN[10]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN[9]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN[8]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN[7]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN[6]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN[5]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN[4]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN[3]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN[2]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN[1]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports {DIN[0]}]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports RST_n]
set_input_delay -clock MY_CLK  -max 0.5  [get_ports VIN]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT[11]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT[10]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT[9]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT[8]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT[7]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT[6]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT[5]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT[4]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT[3]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT[2]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT[1]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports {DOUT[0]}]
set_output_delay -clock MY_CLK  -max 0.5  [get_ports VOUT]
