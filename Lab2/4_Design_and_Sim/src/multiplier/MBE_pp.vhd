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

ENTITY MBE_pp IS
	PORT(	a		: IN STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
		b		: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		pp_out		: OUT STD_LOGIC_VECTOR(Nb DOWNTO 0); -- Nb per lo shift (per 2)
		sign_pp		: OUT STD_LOGIC
	);
END MBE_pp;

ARCHITECTURE Structural OF MBE_pp IS

	------ COMPONENTS -------

	COMPONENT mux4to1_nbit IS
		GENERIC(P   : NATURAL:=8;  -- Parallelism of input
			S   : NATURAL:=2);  -- Parallelism of selector ( ceil(log2(M)) )
		PORT(	data_in_1   	: IN STD_LOGIC_VECTOR(P-1 DOWNTO 0);
			data_in_2   	: IN STD_LOGIC_VECTOR(P-1 DOWNTO 0);
			data_in_3   	: IN STD_LOGIC_VECTOR(P-1 DOWNTO 0);
			data_in_4   	: IN STD_LOGIC_VECTOR(P-1 DOWNTO 0);
			
			SEL		: IN STD_LOGIC_VECTOR(S-1 DOWNTO 0);
			q		: OUT STD_LOGIC_VECTOR(P-1 DOWNTO 0));
	END COMPONENT;



	------ SIGNALS -------

	SIGNAL b1_xor_b0, b2_xor_b1, sel0, sel1, sel0_or_sel1	: STD_LOGIC;
	SIGNAL pp_mux_out, pp_xor_out, a1, a2			: STD_LOGIC_VECTOR(Nb DOWNTO 0);
	SIGNAL sel	: STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL sign_pp_s : STD_LOGIC;
BEGIN

	-- codifica dei 3 bit di b
	b2_xor_b1 <= b(2) xor b(1);		
	b1_xor_b0 <= b(1) xor b(0);
	sel0 <= b2_xor_b1 and not(b1_xor_b0);
	sel1 <= b1_xor_b0;
	

	a1 <= '0' & a;
	a2 <= a & '0';
	sel <= sel1 &sel0;

	MUX: mux4to1_nbit
		GENERIC MAP(Nb+1,2)
		PORT MAP(
			(OTHERS => '0'),
			a1,
			a2,
			(OTHERS => '0'),
			sel,
			pp_mux_out
		);
	
	

	-- scelta se negare o meno il prodotto parziale
	-- nel caso in cui abbiamo tutti '0' non neghiamo
	sel0_or_sel1 <= sel0 or sel1;
	sign_pp_s <= sel0_or_sel1 and b(2);
	pp_out <= pp_mux_out when ( sign_pp_s = '0' ) else not(pp_mux_out); 
	sign_pp <= sign_pp_s;
	

END Structural;




