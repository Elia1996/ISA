-- -- Fiore, Neri, Ribaldone, Zheng
--
-- keyword in MAIUSCOLO (es: STD_LOGIC)
-- dati in minuscolo (es: data_in)
-- segnali di controllo in MAIUSCOLO (es: EN)
-- componenti instanziati con l'iniziale maiuscola (es: Shift_register_1)
-- i segnali attivi bassi con _n finale (es: RST_n)

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

PACKAGE MBE_pkg IS
	CONSTANT column_pp   : NATURAL := 36;
	CONSTANT row_pp      : NATURAL := 17;
	CONSTANT Nb          : NATURAL := 32;
	CONSTANT nl          : NATURAL := 7;
	TYPE MATRIX_PP IS ARRAY(row_pp-1 DOWNTO 0) OF STD_LOGIC_VECTOR(column_pp-1 DOWNTO 0);
	TYPE VECT_MATRIX IS ARRAY(0 TO nl-1, 0 TO row_pp-1) OF STD_LOGIC_VECTOR(2*Nb-1 DOWNTO 0);

END PACKAGE;

