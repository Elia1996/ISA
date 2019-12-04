library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all; 
use ieee.std_logic_textio.all;
library modelsim_lib;
use modelsim_lib.util.all;
USE work.all;
USE work.MBE_pkg.all;
--use work.type_for_IIR_pkg.all;

library std;
use std.textio.all;

entity mul_pipe_tb_out is
  port (
    CLK   	: in std_logic;
    RST_n 	: in std_logic;
	start_read: in std_logic;
    Z   	: in std_logic_vector(32-1 downto 0);
  	A,B		: in std_logic_vector(32-1 downto 0));
    
end mul_pipe_tb_out;

architecture beh of mul_pipe_tb_out is
  signal mat_pp : MATRIX_PP; 
  signal A: STD_LOGIC_VECTOR(64 downto 0);

begin  -- beh

  process 
	
  begin
  	init_signal_spy("/mul_pipe_tb/UUT/i2/mult/pp_matrix","/mul_pipe_tb/TB_OUT/mat_pp");
    init_signal_spy("mul_pipe_tb/UUT/i2/mult/mbe_partial_products/data_a","/mul_pipe_tb/TB_OUT/A");
	wait;
  end process;

  process (CLK, RST_n)
    file res_fp : text open WRITE_MODE is "../sim_out/fp_results_v.txt";
	file res_csv_fp : text open WRITE_MODE is "../sim_out/fp_results_v.csv";
	file res_correct : text open READ_MODE is "../sim_out/fp_prod.hex";
    variable line_out, line_csv_out, line_dout_correct : line;
    variable hex_correct : std_logic_vector(32-1 downto 0);
    variable flag : boolean := false;

  begin
     
    if (flag=false) then
		-- scrivo la prima linea del file csv
		write(line_csv_out, string'("#A,B,Z,Z_correct,Error"));
		writeline(res_csv_fp, line_csv_out);
    end if;

    flag := true;

	if RST_n = '0' then                 -- asynchronous reset (active low)
      	null;
    elsif CLK'event and CLK = '1' then  -- rising clock edge
		

			-- I write in csv file all data
			hwrite(line_csv_out, A );
			write(line_csv_out, string'(","));
			hwrite(line_csv_out, B );
			write(line_csv_out, string'(","));
      	
		
		    -- i simply write output of filter in txt file
			hwrite(line_out, Z);
		 
			if (start_read = '1') then
				-- i read correct value from file by teacher
				readline(res_correct, line_dout_correct);
				hread(line_dout_correct, hex_correct);
						

				hwrite(line_csv_out, z);
				write(line_csv_out, string'(","));
				hwrite(line_csv_out, hex_correct);
				write(line_csv_out, string'(","));
			
				if (hex_correct = z) then
					write(line_csv_out,string'("ok,"));
				else 
					write(line_csv_out,string'("error,"));
				end if;

			else
				
				write(line_csv_out, string'(" , , ,"));
			end if;
		
		writeline(res_fp, line_out);
		writeline(res_csv_fp, line_csv_out);
    end if;

  end process;

end beh;
