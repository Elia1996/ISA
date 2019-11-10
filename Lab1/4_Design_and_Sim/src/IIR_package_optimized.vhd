LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
-- pacchetto per definire un nuovo type di dato (per avere interfacce pi snelle)
PACKAGE type_for_IIR_optimized_pkg IS
	CONSTANT Nb_into : NATURAL := 17; -- parallelismo interno
	CONSTANT Nb : NATURAL := 12; -- parallelismo esterno
	CONSTANT B : NATURAL := 5;
	CONSTANT A : NATURAL := 2;
	-- feed-back constant called a
	TYPE FB_COEFF_A IS ARRAY(A-1 DOWNTO 0) OF STD_LOGIC_VECTOR(Nb_into-1 DOWNTO 0);
	-- feed-forward constant called b
	TYPE FF_COEFF_B IS ARRAY(B-1 DOWNTO 0) OF STD_LOGIC_VECTOR(Nb_into-1 DOWNTO 0);
END PACKAGE;
