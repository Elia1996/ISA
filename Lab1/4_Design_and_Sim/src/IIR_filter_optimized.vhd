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
USE work.type_for_IIR_optimized_pkg.all;

ENTITY IIR_filter_optimized IS 
	PORT(	DIN 		: IN STD_LOGIC_VECTOR(Nb-1 DOWNTO 0); -- data parallelism is Nb, coefficients parallelism is 17
			CLK,RST_n 	: IN STD_LOGIC;
			VIN 		: IN STD_LOGIC;
			DOUT 		: OUT STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
			VOUT 		: OUT STD_LOGIC);
END IIR_filter_optimized;

ARCHITECTURE behavioral OF IIR_filter_optimized IS
	----------- COMPONENTS --------------------
	COMPONENT IIR_filter_gen_optimized IS
	PORT(		d_in			      	: IN STD_LOGIC_VECTOR(Nb-1 DOWNTO 0); 
				CLK, RST_n 				: IN STD_LOGIC;
				VIN              		: IN STD_LOGIC;
					a						: IN FB_COEFF_A;
					b						: IN FF_COEFF_B;
					d_out		        	: OUT STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
				VOUT			      	: OUT STD_LOGIC);
	END COMPONENT IIR_filter_gen_optimized;

	----------- SIGNALS  --------------------
	CONSTANT A : FB_COEFF_A  := (	std_logic_vector(to_signed(-6177,Nb_into)),
											std_logic_vector(to_signed(759, Nb_into)));
											
	CONSTANT B : FF_COEFF_B  := (	std_logic_vector(to_signed(13536, Nb_into)),
											std_logic_vector(to_signed(32075, Nb_into)),
											std_logic_vector(to_signed(22742, Nb_into)),
											std_logic_vector(to_signed(3401, Nb_into)),
											std_logic_vector(to_signed(-801, Nb_into)));
BEGIN
	filter: IIR_filter_gen_optimized
	PORT MAP(	d_in => DIN,
					CLK => CLK,
					RST_n => RST_n,
					VIN => VIN,
					a => A,
					b => B,
					d_out => DOUT,
					VOUT => VOUT);

END behavioral;
