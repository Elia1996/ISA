library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;
--use work.type_for_IIR_pkg.all;
library std;
use std.textio.all;



entity mul_pipe_tb_in  is  
  port (
    CLK     : in  std_logic;
    RST_n   : in  std_logic;
    A,B     : out std_logic_vector(32-1 downto 0);
	start_read: out std_logic;
    END_SIM : out std_logic);
end mul_pipe_tb_in;

architecture beh of mul_pipe_tb_in is

  constant tco : time := 1 ns;
	constant N_reg_pipe : integer := 5;
	signal START_READ_CORRECT: std_logic_vector(0 to N_reg_pipe-1);
	signal s_START_READ_CORRECT: std_logic;
  signal sEndSim : std_logic;
  signal END_SIM_i : std_logic_vector(0 to N_reg_pipe);  

begin  

  process (CLK, RST_n)
    file fp_in : text open READ_MODE is "../sim_in/fp_samples.hex";
    variable line_in : line;
    variable a_var, b_var: std_logic_vector(32-1 downto 0);
	 variable space: character;

  begin  -- process
    if RST_n = '0' then                 -- asynchronous reset (active low)
    	A <= (others => '0') after tco;
	  B <=(others => '0') after tco; --controllare che sia after tc0 dall'inizio      
		
      sEndSim <= '0' after tco;
    elsif CLK'event and CLK = '1' then  -- rising clock edge 
	  	if not endfile(fp_in) then
		
			s_START_READ_CORRECT <= '1';
			readline(fp_in, line_in);
			hread(line_in, a_var);
			read(line_in, space); --read space
			hread(line_in, b_var);
	      
	      A <= a_var;
	      B <= b_var;
	      
			sEndSim <= '0' after tco;	
		else
        	sEndSim <= '1' after tco;
			A <= (others => '0') after tco;
	      	B <= (others => '0') after tco;
			s_START_READ_CORRECT <= '0';
		end if;
    end if;
  end process;
	
  READ_CORRECT: process (CLK, RST_n)
  begin  -- process
    if RST_n = '0' then                 -- asynchronous reset (active low)
      START_READ_CORRECT <= (others => '0') after tco;
    elsif CLK'event and CLK = '1' then  -- rising clock edge
      START_READ_CORRECT(0) <= s_START_READ_CORRECT after tco;
      START_READ_CORRECT(1 to N_reg_pipe-1) <= START_READ_CORRECT(0 to N_reg_pipe-2) after tco;
    end if;
  end process;

  process (CLK, RST_n)
  begin  -- process
    if RST_n = '0' then                 -- asynchronous reset (active low)
      END_SIM_i <= (others => '0') after tco;
    elsif CLK'event and CLK = '1' then  -- rising clock edge
      END_SIM_i(0) <= sEndSim after tco;
      END_SIM_i(1 to N_reg_pipe) <= END_SIM_i(0 to N_reg_pipe-1) after tco;
    end if;
  end process;

  END_SIM <= END_SIM_i(N_reg_pipe); 
 start_read <= START_READ_CORRECT(N_reg_pipe-1); 

end beh;
