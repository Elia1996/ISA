LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
-- pacchetto per definire un nuovo type di dato (per avere interfacce pi snelle)
PACKAGE type_for_IIR_pkg IS
	CONSTANT Nb : NATURAL := 12;
	CONSTANT N : NATURAL := 2;
	-- feed-back constant called a
	TYPE FB_COEFF_A IS ARRAY(N-1 DOWNTO 0) OF STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
	-- feed-forward constant called b
	TYPE FF_COEFF_B IS ARRAY(N DOWNTO 0) OF STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
END PACKAGE;