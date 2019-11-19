-- NAME 
--		IIR generic filter
-- DESCRIPTION
-- 		Questa  l'architettura di un filtro IIR di ordine N, e numero 
--		di bit Nb_into, entrambi vanno settati nel package type_for_IIR_pkg
-- 		instanziato sotto. 
--		L'equazione implementata :
--		y(z) = (b0 + z^-1*b1 + z^-2*b2)/(1 - z^-1*a0 -z^-2*a1)
-- 		ovvero in notazione nel tempo
--		yi = xi*b0 + x(i-1)*bi + x(i-2)*b2 - y(i-1)*a0 - y(i-2)*a1
-- 		 stata riportata l'equazione per un filtro di ordine 2.
-- AUTHOR
-- 		Fiore, Neri, Ribaldone, Zheng
-- VHDL NOTATION
--		 keyword in MAIUSCOLO (es: STD_LOGIC)
--		 dati in minuscolo (es: STD_LOGIC_VECTOR(Nb_into-1 DOWNTO 0)_in)
--		 segnali di controllo in MAIUSCOLO (es: EN)
--		 componenti instanziati con l'iniziale maiuscola (es: Shift_register_1)
--		 i segnali attivi bassi con _n finale (es: RST_n)

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
--use ieee.std_logic_arith.all;


LIBRARY work;
USE work.type_for_IIR_optimized_pkg.all;


ENTITY IIR_filter_gen_optimized IS
	PORT(		
				d_in			      	: IN STD_LOGIC_VECTOR(Nb-1 DOWNTO 0); 
				CLK, RST_n 			: IN STD_LOGIC;
				VIN              		: IN STD_LOGIC;
				a				: IN FB_COEFF_A;
				b				: IN FF_COEFF_B;
				d_out		        	: OUT STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
				VOUT			      	: OUT STD_LOGIC);
END IIR_filter_gen_optimized;


ARCHITECTURE behavioral OF IIR_filter_gen_optimized IS

	--------- COMPONENTS ---------
	COMPONENT register_nbit IS
	GENERIC(	N 					: NATURAL:=Nb);
	PORT(		data_in 			: IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			EN, CLK, RST_n : IN STD_LOGIC;
			data_out		    : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
	END COMPONENT register_nbit;

	--------- SIGNALS ---------
	
	SIGNAL data_in							: STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);	
	-- Segnali di ingresso ritardati
	SIGNAL 	s_A1_reg_delay1, s_A1_reg_delay2, s_A1_reg_delay3	: STD_LOGIC_VECTOR(Nb+1 -1 DOWNTO 0);

	
	-- Segnali di uscita dai moltiplicatori
	SIGNAL 	m_A1_tmp, m_A2_tmp				: STD_LOGIC_VECTOR(Nb+Nb_into+1 -1 DOWNTO 0); -- extended parallelism
	SIGNAL 	m_A1, m_A2					: STD_LOGIC_VECTOR(Nb_into-1 DOWNTO 0); -- reduced parallelism
	-- Segnali di uscita dai registri a valle dei moltiplicatori
	SIGNAL 	m_A1_reg, m_A2_reg				: STD_LOGIC_VECTOR(Nb_into-1 DOWNTO 0);
	-- Segnali di uscita dai sommatori
	SIGNAL 	s_A1, s_A1_reg 					: STD_LOGIC_VECTOR(Nb+1 -1 DOWNTO 0);
	SIGNAL	s_A2						: STD_LOGIC_VECTOR(Nb_into-1 DOWNTO 0);
	-- Segnali di uscita dai registri a valle dei moltiplicatori
  	SIGNAL 	s_B0_reg, s_B1_reg          		: STD_LOGIC_VECTOR(Nb_into-1 DOWNTO 0);


	-- Segnali di uscita dai moltiplicatori
	SIGNAL 	m_B0_tmp, m_B1_tmp, m_B2_tmp, m_B3_tmp, m_B4_tmp	: STD_LOGIC_VECTOR(Nb+Nb_into+1 -1 DOWNTO 0); -- extended parallelism
	SIGNAL 	m_B0, m_B1, m_B2, m_B3, m_B4				: STD_LOGIC_VECTOR(Nb_into-1 DOWNTO 0); -- reduced parallelism
	-- Segnali di uscita dai registri a valle dei moltiplicatori
	SIGNAL 	m_B0_reg, m_B1_reg, m_B2_reg, m_B3_reg, m_B4_reg			: STD_LOGIC_VECTOR(Nb_into-1 DOWNTO 0);
	-- Segnali di uscita dai sommatori
	SIGNAL 	s_B0, s_B1, s_B2, s_B3, s_B4				: STD_LOGIC_VECTOR(Nb_into-1 DOWNTO 0);
	
  
	-- Segnali di controllo
	SIGNAL REG_CTRL_1_OUT,REG_CTRL_2_OUT,REG_CTRL_3_OUT		: STD_LOGIC;


	--------- BEGIN ---------
BEGIN

	-- registro di ingresso dei dati  DIN -> d_in
	-- questo registro viene resettato dal segnale di ingresso dato
	-- che non c' la control unit
	Reg_in: register_nbit
		GENERIC MAP(Nb)
		PORT MAP(		d_in,
					VIN, CLK, RST_n,
					data_in);


	s_A1 <= std_logic_vector(signed(data_in(Nb-1) & data_in) + signed(s_A2(Nb_into-1 DOWNTO Nb_into-Nb)));
	
	-- Registro che salva s_A1
	Reg_s_A1_0 : register_nbit
		GENERIC MAP(Nb+1)
		PORT MAP(	s_A1,
				Reg_ctrl_1_out, CLK, RST_n,
				s_A1_reg);

	-- Registro che salva s_A1_delay1
	Reg_s_A1_1: register_nbit
		GENERIC MAP(Nb+1)
		PORT MAP(	s_A1_reg,
				Reg_ctrl_1_out, CLK, RST_n,
				s_A1_reg_delay1);

	-- Registro che salva s_A1_delay2
	Reg_s_A1_2 : register_nbit
		GENERIC MAP(Nb+1)
		PORT MAP(	s_A1_reg_delay1,
				Reg_ctrl_1_out, CLK, RST_n,
				s_A1_reg_delay2);
	
	

	s_A2 <= std_logic_vector(signed(m_A1_reg) + signed(m_A2_reg));

	m_A1_tmp <= std_logic_vector(signed(s_A1_reg_delay1) * signed(A(0)));
	m_A1 <= m_A1_tmp(Nb+Nb_into-2 downto Nb-1);
	
	m_A2_tmp <= std_logic_vector(signed(s_A1_reg_delay2) * signed(A(1)));
	m_A2 <= m_A2_tmp(Nb+Nb_into-2 downto Nb-1);


	-- Registro che salva m_A1
	Reg_m_A1 : register_nbit
		GENERIC MAP(Nb_into)
		PORT MAP(	m_A1,
				Reg_ctrl_1_out, CLK, RST_n,
				m_A1_reg);

	-- Registro che salva m_A2
	Reg_m_A2 : register_nbit
		GENERIC MAP(Nb_into)
		PORT MAP(	m_A2,
				Reg_ctrl_1_out, CLK, RST_n,
				m_A2_reg);


---------------- FINE PRIMO PEZZO DEL DP --------------------

	m_B0_tmp <= std_logic_vector(signed(s_A1_reg) * signed(B(0)));
	m_B0 <= m_B0_tmp(Nb+Nb_into-2 downto Nb-1);


	-- Registro che salva m_B0
	Reg_m_B0 : register_nbit
		GENERIC MAP(Nb_into)
		PORT MAP(	m_B0,
				Reg_ctrl_2_out, CLK, RST_n,
				m_B0_reg);
	
	m_B1_tmp <= std_logic_vector(signed(s_A1_reg) * signed(B(1)));
	m_B1 <= m_B1_tmp(Nb+Nb_into-2 downto Nb-1);


	-- Registro che salva m_B1
	Reg_m_B1 : register_nbit
		GENERIC MAP(Nb_into)
		PORT MAP(	m_B1,
				Reg_ctrl_2_out, CLK, RST_n,
				m_B1_reg);

	

	m_B2_tmp <= std_logic_vector(signed(s_A1_reg_delay1) * signed(B(2)));
	m_B2 <= m_B2_tmp(Nb+Nb_into-2 downto Nb-1);


	-- Registro che salva m_B2
	Reg_m_B2 : register_nbit
		GENERIC MAP(Nb_into)
		PORT MAP(	m_B2,
				Reg_ctrl_2_out, CLK, RST_n,
				m_B2_reg);

	m_B3_tmp <= std_logic_vector(signed(s_A1_reg_delay2) * signed(B(3)));
	m_B3 <= m_B3_tmp(Nb+Nb_into-2 downto Nb-1);


	-- Registro che salva m_B3
	Reg_m_B3 : register_nbit
		GENERIC MAP(Nb_into)
		PORT MAP(	m_B3,
				Reg_ctrl_2_out, CLK, RST_n,
				m_B3_reg);
	
	-- Registro che salva s_A1_reg_delay3
	Reg_s_A1_reg_delay3 : register_nbit
		GENERIC MAP(Nb+1)
		PORT MAP(	s_A1_reg_delay2,
				Reg_ctrl_2_out, CLK, RST_n,
				s_A1_reg_delay3);

	m_B4_tmp <= std_logic_vector(signed(s_A1_reg_delay3) * signed(B(4)));
	m_B4 <= m_B4_tmp(Nb+Nb_into-2 downto Nb-1);


	-- Registro che salva m_B4
	Reg_m_B4 : register_nbit
		GENERIC MAP(Nb_into)
		PORT MAP(	m_B4,
				Reg_ctrl_2_out, CLK, RST_n,
				m_B4_reg);

	
	s_B3 <= std_logic_vector(signed(m_B4_reg) + signed(m_B3_reg));

	s_B2 <= std_logic_vector(signed(s_B3) + signed(m_B2_reg));

	s_B1 <= std_logic_vector(signed(s_B2) + signed(m_B1_reg));

	-- Registro che salva s_B1
	Reg_s_B1 : register_nbit
		GENERIC MAP(Nb_into)
		PORT MAP(	s_B1,
				Reg_ctrl_2_out, CLK, RST_n,
				s_B1_reg);

	s_B0 <= std_logic_vector(signed(m_B0_reg) + signed(s_B1_reg));


	-- Registro di uscita dei dati  s_B0 -> d_out
	Reg_out : register_nbit
		GENERIC MAP(Nb)
		PORT MAP(	s_B0(Nb_into-1 DOWNTO Nb_into-Nb),
				REG_CTRL_3_OUT, CLK, RST_n,
				d_out);




	--------  CONTROLLO  ---------

	Reg_ctrl_1 : register_nbit
		GENERIC MAP(1)
		PORT MAP( data_in(0) => VIN,
				EN => '1',
				CLK => CLK,
				RST_n => RST_n,
				data_out(0) => Reg_ctrl_1_out);

	Reg_ctrl_2 : register_nbit
		GENERIC MAP(1)
		PORT MAP( data_in(0) => Reg_ctrl_1_out,
				EN => '1',
				CLK => CLK,
				RST_n => RST_n,
				data_out(0) => Reg_ctrl_2_out);

	Reg_ctrl_3 : register_nbit
		GENERIC MAP(1)
		PORT MAP ( data_in(0) => Reg_ctrl_2_out,
				EN => '1',
				CLK => CLK,
				RST_n => RST_n,
				data_out(0) => Reg_ctrl_3_out);

	Reg_ctrl_VOUT : register_nbit
		GENERIC MAP(1)
		PORT MAP ( data_in(0) => Reg_ctrl_3_out,
				EN => '1',
				CLK => CLK,
				RST_n => RST_n,
				data_out(0) => VOUT);
	--VOUT <= Reg_ctrl_3_out;


END behavioral;
