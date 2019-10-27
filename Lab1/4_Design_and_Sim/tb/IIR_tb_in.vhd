library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;
use work.type_for_IIR_pkg.all;
library std;
use std.textio.all;

entity IIR_tb_in  is  
  port (
    CLK     : in  std_logic;
    RST_n   : in  std_logic;
    VIN    : out std_logic;
    DIN    : out std_logic_vector(Nb-1 downto 0);
   -- H0      : out std_logic_vector(15 downto 0);
    END_SIM : out std_logic);
end IIR_tb_in;

architecture beh of IIR_tb_in is

  constant tco : time := 1 ns;

  signal sEndSim : std_logic;
  signal END_SIM_i : std_logic_vector(0 to 10);  

begin  -- beh

  --H0 <= conv_std_logic_vector(286,16);
  

  process (CLK, RST_n)
    file fp_in : text open READ_MODE is "../sim_in/samples.txt";
    file fp_vin : text open READ_MODE is "../sim_in/vin_samples.txt";
    variable line_in, line_vin : line;
    variable d_in: integer;
    variable v_in : integer;
  begin  -- process
    if RST_n = '0' then                 -- asynchronous reset (active low)
      DOUT <= (others => '0') after tco;      
      VOUT <= '0' after tco;
      sEndSim <= '0' after tco;
    elsif CLK'event and CLK = '1' then  -- rising clock edge 
	  	if not endfile(fp_vin) then
			readline(fp_vin, line_vin);
			read(line_vin, v_in);
			-- I take input value only if vin=1
			if v_in = 1 then
				if not endfile(fp_in) then
					readline(fp_in, line_in);
					read(line_in, d_in);
					DIN <= conv_std_logic_vector(d_in, Nb) after tco;
					VIN <= '1' after tco;
					sEndSim <= '0' after tco;
				else
					VIN <= '0' after tco;       
					sEndSim <= '1' after tco;
				end if;
			else
        		VIN <= '0' after tco;
        		sEndSim <= '0' after tco;
			end if;
      	end if;
    end if;
  end process;

  process (CLK, RST_n)
  begin  -- process
    if RST_n = '0' then                 -- asynchronous reset (active low)
      END_SIM_i <= (others => '0') after tco;
    elsif CLK'event and CLK = '1' then  -- rising clock edge
      END_SIM_i(0) <= sEndSim after tco;
      END_SIM_i(1 to 10) <= END_SIM_i(0 to 9) after tco;
    end if;
  end process;

  END_SIM <= END_SIM_i(10);  

end beh;
