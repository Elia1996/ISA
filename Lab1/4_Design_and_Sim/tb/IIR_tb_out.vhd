library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;

library std;
use std.textio.all;

entity data_sink is
  port (
    CLK   : in std_logic;
    RST_n : in std_logic;
    VIN   : in std_logic;
    DIN   : in std_logic_vector(15 downto 0));
  	VIN_filter: in std_logic;
  	DIN_filter, v_filter, v1_filter, v2_filter: in std_logic_vector(Nb-1 downto 0);
end data_sink;

architecture beh of data_sink is

begin  -- beh

  process (CLK, RST_n)
    file res_fp : text open WRITE_MODE is "../sim_out/results_v.txt";
	file res_csv_fp : text open WRITE_MODE is "../sim_out/results_v.csv";
	file res_correct : text open READ_MODE is "../../3_C/results_c.txt";
    variable line_out, line_csv_out, line_dout_correct : line;    
	-- scrivo la prima linea del file csv
	write(line_csv_out, string'("#VIN,DIN,v,v1,v2,VOUT,DOUT,DOUT_correct,Error"));
	writeline(res_csv_fp, line_csv_out);
  begin  -- process
    if RST_n = '0' then                 -- asynchronous reset (active low)
      null;
    elsif CLK'event and CLK = '1' then  -- rising clock edge
      if (VIN = '1') then
		
        write(line_out, conv_integer(signed(DIN_filter)));
		write(line_csv_out, VIN_filter);
	    write(line_csv_out, string'(","));
		write(line_csv_out, conv_integer(signed(DIN)));
	    write(line_csv_out, string'(","));
		write(line_csv_out, conv_integer(signed(v_filter)));
	    write(line_csv_out, string'(","));
		write(line_csv_out, conv_integer(signed(v1_filter)));
	    write(line_csv_out, string'(","));
		write(line_csv_out, conv_integer(signed(v2_filter)));
	    write(line_csv_out, string'(","));
		write(line_csv_out, VIN);
	    write(line_csv_out, string'(","));
		write(line_csv_out, conv_integer(signed()));
	    write(line_csv_out, string'(","));
		write(line_csv_out, conv_integer(signed(dout_correct)));
	    write(line_csv_out, string'(","));


        writeline(res_fp, line_out);
      end if;
    end if;
  end process;

end beh;
