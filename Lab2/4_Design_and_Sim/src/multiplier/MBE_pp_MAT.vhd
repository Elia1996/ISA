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

ENTITY MBE_pp_MAT IS
PORT(	data_a		: IN STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
	data_b		: IN STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
	pp_mat		: OUT MATRIX_PP);
END MBE_pp_MAT;

ARCHITECTURE structure OF MBE_pp_MAT IS

	------ COMPONENTS -------

	COMPONENT MBE_port_map IS
		PORT(	pp_mat		: IN MATRIX_PP;
			sign_pp		: IN STD_LOGIC_VECTOR(row_pp-2 DOWNTO 0);
			data_out1	: OUT STD_LOGIC_VECTOR(2*Nb-1 DOWNTO 0);
			data_out2	: OUT STD_LOGIC_VECTOR(2*Nb-1 DOWNTO 0)
		);
	END COMPONENT;


	COMPONENT MBE_PP IS
		PORT(	a		: IN STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
			b		: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			pp_out		: OUT STD_LOGIC_VECTOR(Nb DOWNTO 0); -- Nb+1 per lo shift (per 2)
			sign_pp		: OUT STD_LOGIC
		);
	END COMPONENT;


	------ SIGNALS -------

	SIGNAL b_pad		: STD_LOGIC_VECTOR(Nb+2 DOWNTO 0); 
	SIGNAL pp_pad		: STD_LOGIC_VECTOR(Nb+3 DOWNTO 0);

BEGIN

	-- PADDING B
	b_pad <= "00" & data_b & '0';

	
	GEN_PP: FOR i in 0 to Nb/2+1 GENERATE
		MBE_i : MBE_PP
			PORT MAP(
				data_a,
				data_b(2*i+2 DOWNTO 2*i),
				pp_mat(i)(Nb DOWNTO 0)
			);
	END GENERATE;
	

END structure;







