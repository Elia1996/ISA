-- NAME
-- 		IIR filter
-- DESCRIPTION
-- 		Questo file contiene l'interfaccia fra l'architettura del filtro
--		generico IIR_filter_gen e il testbench, si  descritta questa 
--		architettura esterna per far si che l'interfaccia con il simulatore
--		si la stessa degli altri gruppi ma allo stesso tempo si avesse una 
--		descrizione generica del filtro IIR nel file IIR_filter_gen.vhd
-- AUTHOR 
--		Fiore, Neri, RIbaldone, Zheng
-- VHDL NOTATION
--		 keyword in MAIUSCOLO (es: STD_LOGIC)
--		 dati in minuscolo (es: data_in)
--		 segnali di controllo in MAIUSCOLO (es: EN)
--		 componenti instanziati con l'iniziale maiuscola (es: Shift_register_1)
--		 i segnali attivi bassi con _n finale (es: RST_n)

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;	
USE work.all;
USE work.type_for_IIR_pkg.all;

ENTITY IIR_filter IS 
	PORT(	DIN 		: IN STD_LOGIC_VECTOR(11 DOWNTO 0);
			CLK,RST_n 	: IN STD_LOGIC;
			VIN 		: IN STD_LOGIC;
			DOUT 		: OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
			VOUT 		: OUT STD_LOGIC;
			v 			: OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
			v1 			: OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
			v2 			: OUT STD_LOGIC_VECTOR(11 DOWNTO 0));
END IIR_filter;

ARCHITECTURE behavioral OF IIR_filter IS
	----------- COMPONENTS --------------------
	COMPONENT IIR_filter_gen IS
	PORT(	d_in			      	: IN STD_LOGIC_VECTOR(Nb-1 DOWNTO 0); 
			CLK, RST_n 				: IN STD_LOGIC;
			VIN              		: IN STD_LOGIC;
			a						: IN FB_COEFF_A;
			b						: IN FF_COEFF_B;
			d_out		        	: OUT STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
			v_out		        	: OUT STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
			v1_out					: OUT STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
			v2_out					: OUT STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
			VOUT			      	: OUT STD_LOGIC);
	END COMPONENT IIR_filter_gen;

	----------- SIGNALS  --------------------
	-- I valori di a vanno messi negativi
	CONSTANT A : FB_COEFF_A  := (std_logic_vector(to_signed(757,DIN'length)),
								std_logic_vector(to_signed(-401, DIN'length)));
	CONSTANT B : FF_COEFF_B  := (std_logic_vector(to_signed(423, DIN'length)),
								std_logic_vector(to_signed(846, DIN'length)),
								std_logic_vector(to_signed(423, DIN'length)));
BEGIN
	filter: IIR_filter_gen
	PORT MAP(	d_in => DIN,
				CLK => CLK,
				RST_n => RST_n,
				VIN => VIN,
				a => A,
				b => B,
				d_out => DOUT,
				v_out => v,
				v1_out => v1,
				v2_out => v2,
				VOUT => VOUT);

END behavioral;
