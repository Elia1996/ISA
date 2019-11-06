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
				d_in			      : IN STD_LOGIC_VECTOR(Nb-1 DOWNTO 0); 
				CLK, RST_n 			: IN STD_LOGIC;
				VIN              	: IN STD_LOGIC;
				a						: IN FB_COEFF_A;
				b						: IN FF_COEFF_B;
				d_out		        	: OUT STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
				VOUT			      	: OUT STD_LOGIC);
END IIR_filter_gen_optimized;


ARCHITECTURE behavioral OF IIR_filter_gen_optimized IS

	--------- COMPONENTS ---------
	COMPONENT register_Nb IS
	GENERIC(	N 					: NATURAL:=Nb);
	PORT(		data_in 			: IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
				EN, CLK, RST_n : IN STD_LOGIC;
				data_out		    : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
	END COMPONENT register_Nb;

	--------- SIGNALS ---------
	
	SIGNAL data_in														: STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);	
	-- Segnali di ingresso ritardati
	SIGNAL 	x_delay_1, x_delay_2, x_delay_3, x_delay_4	: STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
	-- Segnali di uscita ritardati
	SIGNAL 	y_delay_1, y_delay_2, y_delay_3, y_delay_4	: STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
	
	-- Segnali di uscita dai moltiplicatori
	SIGNAL 	m_1_tmp, m_2_tmp, m_3_tmp, m_4_tmp, m_5_tmp, m_6_tmp, m_7_tmp	: STD_LOGIC_VECTOR(Nb+Nb_into-1 DOWNTO 0); -- extended parallelism
	SIGNAL 	m_1, m_2, m_3, m_4, m_5, m_6, m_7				: STD_LOGIC_VECTOR(Nb_into-1 DOWNTO 0); -- reduced parallelism
	-- Segnali di uscita dai registri a valle dei moltiplicatori
	SIGNAL 	reg_m_1, reg_m_2, reg_m_3, reg_m_4, reg_m_5, reg_m_6, reg_m_7	: STD_LOGIC_VECTOR(Nb_into-1 DOWNTO 0);
	
	-- Segnali di uscita dai sommatori
	SIGNAL 	s_1, s_2, s_3, s_4, s_5, s_6				: STD_LOGIC_VECTOR(Nb_into-1 DOWNTO 0);
	-- Segnali di uscita dai registri a valle dei moltiplicatori
  SIGNAL 	reg_s_4                         : STD_LOGIC_VECTOR(Nb_into-1 DOWNTO 0);
  
	-- Segnali di controllo
	SIGNAL REG_CTRL_1_OUT				: STD_LOGIC;


	--------- BEGIN ---------
BEGIN

	-- registro di ingresso dei dati  DIN -> d_in
	-- questo registro viene resettato dal segnale di ingresso dato
	-- che non c' la control unit
	Reg_in: register_Nb
		GENERIC MAP(Nb)
		PORT MAP(		d_in,
							VIN, CLK, RST_n,
							data_in);

	-- Registro che salva x(n-1)
	Reg_x_delay_1 : register_Nb
		GENERIC MAP(Nb)
		PORT MAP(	data_in,
						REG_CTRL_1_OUT, CLK, RST_n,
						x_delay_1);
	-- Registro che salva x(n-2)
	Reg_x_delay_2 : register_Nb
		GENERIC MAP(Nb)
		PORT MAP(	x_delay_1,
						REG_CTRL_1_OUT, CLK, RST_n,
						x_delay_2);
	-- Registro che salva x(n-3)
	Reg_x_delay_3 : register_Nb
		GENERIC MAP(Nb)
		PORT MAP(	x_delay_2,
						REG_CTRL_1_OUT, CLK, RST_n,
						x_delay_3);
	-- Registro che salva x(n-4)
	Reg_x_delay_4 : register_Nb
		GENERIC MAP(Nb)
		PORT MAP(	x_delay_3,
						REG_CTRL_1_OUT, CLK, RST_n,
						x_delay_4);
						
						
						
	-- Collegamenti e operazioni di moltiplicazione
	m_1_tmp <= std_logic_vector(signed(data_in) * signed(B(0)));
	m_1 <= m_1_tmp(Nb+Nb_into-1 downto Nb);
	
	m_2_tmp <= std_logic_vector(signed(x_delay_1) * signed(B(1)));
	m_2 <= m_2_tmp(Nb+Nb_into-1 downto Nb);
	
	m_3_tmp <= std_logic_vector(signed(x_delay_2) * signed(B(2)));
	m_3 <= m_3_tmp(Nb+Nb_into-1 downto Nb);
	
	m_4_tmp <= std_logic_vector(signed(x_delay_3) * signed(B(3)));
	m_4 <= m_4_tmp(Nb+Nb_into-1 downto Nb);
	
	m_5_tmp <= std_logic_vector(signed(x_delay_4) * signed(B(4)));
	m_5 <= m_5_tmp(Nb+Nb_into-1 downto Nb);
	

	-- Registro che salva m1
	Reg_m1 : register_Nb
		GENERIC MAP(Nb_into)
		PORT MAP(	m_1,
						REG_CTRL_1_OUT, CLK, RST_n,
						reg_m_1);
	-- Registro che salva m2
	Reg_m2 : register_Nb
		GENERIC MAP(Nb_into)
		PORT MAP(	m_2,
						REG_CTRL_1_OUT, CLK, RST_n,
						reg_m_2);
	-- Registro che salva m3
	Reg_m3 : register_Nb
		GENERIC MAP(Nb_into)
		PORT MAP(	m_3,
						REG_CTRL_1_OUT, CLK, RST_n,
						reg_m_3);
	-- Registro che salva m4
	Reg_m4 : register_Nb
		GENERIC MAP(Nb_into)
		PORT MAP(	m_4,
						REG_CTRL_1_OUT, CLK, RST_n,
						reg_m_4);
	-- Registro che salva m5
	Reg_m5 : register_Nb
		GENERIC MAP(Nb_into)
		PORT MAP(	m_5,
						REG_CTRL_1_OUT, CLK, RST_n,
						reg_m_5);
	

	
	-- Collegamenti e operazioni di somma
	s_1 <= std_logic_vector(signed(reg_m_1) + signed(reg_m_2));

	s_2 <= std_logic_vector(signed(s_1) + signed(reg_m_3));
	
	s_3 <= std_logic_vector(signed(s_1) + signed(reg_m_4));
	
	s_4 <= std_logic_vector(signed(s_1) + signed(reg_m_5));
	
	-- Registro che salva s4
	Reg_s4 : register_Nb
		GENERIC MAP(Nb_into)
		PORT MAP(	s_4,
						REG_CTRL_1_OUT, CLK, RST_n,
						reg_s_4);
						
	
	---------------- FINE PRIMO PEZZO DEL DP --------------------
	
	-- Registro che salva y(n-1)
	Reg_y_delay_1 : register_Nb
		GENERIC MAP(Nb)
		PORT MAP(	s_6(Nb_into-1 DOWNTO Nb_into-Nb),
						REG_CTRL_1_OUT, CLK, RST_n,
						y_delay_1);
	-- Registro che salva y(n-2)
	Reg_y_delay_2 : register_Nb
		GENERIC MAP(Nb)
		PORT MAP(	y_delay_1,
						REG_CTRL_1_OUT, CLK, RST_n,
						y_delay_2);
	-- Registro che salva y(n-3)
	Reg_y_delay_3 : register_Nb
		GENERIC MAP(Nb)
		PORT MAP(	y_delay_2,
						REG_CTRL_1_OUT, CLK, RST_n,
						y_delay_3);


	-- Collegamenti e operazioni di moltiplicazione
	m_6_tmp <= std_logic_vector(signed(y_delay_3) * signed(A(1)));
	m_6 <= m_6_tmp(Nb+Nb_into-1 downto Nb);	
	
	m_7_tmp <= std_logic_vector(signed(y_delay_2) * signed(A(0)));
	m_7 <= m_7_tmp(Nb+Nb_into-1 downto Nb);
	
	-- Registro che salva m6
	Reg_m6 : register_Nb
		GENERIC MAP(Nb_into)
		PORT MAP(	m_6,
						REG_CTRL_1_OUT, CLK, RST_n,
						reg_m_6);
	-- Registro che salva m7
	Reg_m7 : register_Nb
		GENERIC MAP(Nb_into)
		PORT MAP(	m_7,
						REG_CTRL_1_OUT, CLK, RST_n,
						reg_m_7);
	
	-- Collegamenti e operazioni di somma
	s_5 <= std_logic_vector(signed(reg_s_4) + signed(reg_m_6));

	s_6 <= std_logic_vector(signed(s_5) + signed(reg_m_7));
	
	
	-- Registro di uscita dei dati  s_6 -> d_out
	Reg_out : register_Nb
		GENERIC MAP(Nb)
		PORT MAP(	s_6(Nb_into-1 DOWNTO Nb_into-Nb),
						REG_CTRL_1_OUT, CLK, RST_n,
						d_out);


	--------  CONTROLLO  ---------

	Reg_ctrl_1 : register_Nb
		GENERIC MAP(1)
		PORT MAP( data_in(0) => VIN,
				EN => '1',
				CLK => CLK,
				RST_n => RST_n,
				data_out(0) => Reg_ctrl_1_out);

	Reg_ctrl_2 : register_Nb
		GENERIC MAP(1)
		PORT MAP ( data_in(0) => Reg_ctrl_1_out,
				EN => '1',
				CLK => CLK,
				RST_n => RST_n,
				data_out(0) => VOUT);




END behavioral;
