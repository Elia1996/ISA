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
USE work.all;
USE work.MBE_pkg.all;

ENTITY MBE_multiplier IS
PORT(	data_in1		: IN STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
	data_in2		: IN STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
	data_out		: OUT STD_LOGIC_VECTOR(2*Nb-1 DOWNTO 0));
END MBE_multiplier;

ARCHITECTURE structure OF MBE_multiplier IS

------ COMPONENTS -------

COMPONENT MBE_dadda IS
PORT(	pp_mat			: IN MATRIX_PP;
	sign_pp			: IN STD_LOGIC_VECTOR(row_pp-2 DOWNTO 0);
	data_out1		: OUT STD_LOGIC_VECTOR(2*Nb-1 DOWNTO 0);
	data_out2		: OUT STD_LOGIC_VECTOR(2*Nb-1 DOWNTO 0));
END COMPONENT;

COMPONENT MBE_encoder IS
PORT(	

END COMPONENT;


------ SIGNALS -------

SIGNAL mult_vmat	: VECT_MATRIX;


BEGIN


