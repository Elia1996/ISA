library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all; 
use ieee.std_logic_textio.all;
use work.type_for_IIR_optimized_pkg.all;

library std;
use std.textio.all;

entity IIR_tb_out is
  port (
    CLK   : in std_logic;
    RST_n : in std_logic;
    VOUT   : in std_logic;
    DOUT   : in std_logic_vector(Nb-1 downto 0);
  	VIN: in std_logic;
  	DIN: in std_logic_vector(Nb-1 downto 0));
    
end IIR_tb_out;

architecture beh of IIR_tb_out is

begin  -- beh

  process (CLK, RST_n)
        file res_fp : text open WRITE_MODE is "../sim_out/results_v.txt";
	file res_csv_fp : text open WRITE_MODE is "../sim_out/results_v.csv";
	file res_correct : text open READ_MODE is "../sim_out/results_m.txt";
	file res_c	 : text open READ_MODE is "../sim_out/results_c.txt";
    variable line_out, line_csv_out, line_dout_correct, line_dout_c : line;
    variable int_from_m : integer;
    variable int_from_c : integer;
    variable flag : boolean := false;

  begin
     
    if (flag=false) then
		-- scrivo la prima linea del file csv
		write(line_csv_out, string'("#VIN,DIN,VOUT,DOUT,DOUT_correct,DOUT_c,Error"));
		writeline(res_csv_fp, line_csv_out);
    end if;

    flag := true;

	if RST_n = '0' then                 -- asynchronous reset (active low)
      	null;
    elsif CLK'event and CLK = '1' then  -- rising clock edge
		

			-- I write in csv file all data
			write(line_csv_out, VIN );
			write(line_csv_out, string'(","));
			write(line_csv_out, conv_integer(signed(DIN)));
			write(line_csv_out, string'(","));
			write(line_csv_out, VOUT);
			write(line_csv_out, string'(","));
      	
		if (vout = '1') then	
		    -- i simply write output of filter in txt file
			write(line_out, conv_integer(signed(dout)));
		 
		    -- i read correct value from file creataed by c code
			readline(res_correct, line_dout_correct);
			read(line_dout_correct, int_from_m);
		
		    -- i read correct value from file creataed by c code
			readline(res_c, line_dout_c);
			read(line_dout_c, int_from_c);

			write(line_csv_out, conv_integer(signed(dout)));
			write(line_csv_out, string'(","));
			write(line_csv_out, int_from_m);
			write(line_csv_out, string'(","));
			write(line_csv_out, int_from_c);
			write(line_csv_out, string'(","));
			
			if (int_from_m = conv_integer(signed(dout))) then
				write(line_csv_out,string'("ok,"));
			else 
				write(line_csv_out,string'("error,"));
			end if;
		else
			write(line_csv_out,string'(" , , ,"));
		end if;
		writeline(res_fp, line_out);
		writeline(res_csv_fp, line_csv_out);
    end if;

  end process;

end beh;
