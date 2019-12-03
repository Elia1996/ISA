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

ENTITY MBE IS
GENERIC(N 		: NATURAL:=8; -- Parallelismo dei prodotti parziali
	M		: NATURAL:=3); -- numero dei prodotti parziali
PORT(	data_in_1 	: IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	data_in_2 	: IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	data_in_3 	: IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);

	--EN, CLK, RST_n  : IN STD_LOGIC;

	data_out_	: OUT STD_LOGIC_VECTOR(2*N-1 DOWNTO 0));

END MBE;

ARCHITECTURE behavior OF MBE IS
BEGIN

PROCESS(CLK)
BEGIN
	IF (CLK'EVENT AND CLK = '1') THEN
		IF RST_n='0' THEN 
			data_out <= (OTHERS => '0');
		ELSIF RST_n='1' THEN
			IF EN='1' THEN
				data_out <= data_in;
			ELSIF EN='0' THEN
				NULL;
			END IF;
		ELSE NULL;
		END IF;
	END IF;
END PROCESS;

END behavior;
