-- NAME 
--		IIR generic filter
-- DESCRIPTION
-- 		Questa  l'architettura di un filtro IIR di ordine N, e numero 
--		di bit Nb, entrambi vanno settati nel package type_for_IIR_pkg
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
--		 dati in minuscolo (es: STD_LOGIC_VECTOR(Nb-1 DOWNTO 0)_in)
--		 segnali di controllo in MAIUSCOLO (es: EN)
--		 componenti instanziati con l'iniziale maiuscola (es: Shift_register_1)
--		 i segnali attivi bassi con _n finale (es: RST_n)

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
--use ieee.std_logic_arith.all;


LIBRARY work;
USE work.type_for_IIR_pkg.all;


ENTITY IIR_filter_gen IS
	PORT(		
				d_in			      	: IN STD_LOGIC_VECTOR(Nb-1 DOWNTO 0); 
				CLK, RST_n 				: IN STD_LOGIC;
				VIN              		: IN STD_LOGIC;
				a						: IN FB_COEFF_A;
				b						: IN FF_COEFF_B;
				d_out		        	: OUT STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
				v_out		        		: OUT STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
				v1_out						: OUT STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
				v2_out					: OUT STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
				VOUT			      	: OUT STD_LOGIC);
END IIR_filter_gen;


ARCHITECTURE behavioral OF IIR_filter_gen IS

	--------- COMPONENTS ---------
	COMPONENT register_nbit IS
	GENERIC(	N 					: NATURAL:=Nb);
	PORT(		data_in 			: IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
				EN, CLK, RST_n : IN STD_LOGIC;
				data_out		    : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
	END COMPONENT register_nbit;

	--------- SIGNALS ---------

	-- Segnali centrali ritardati
	SIGNAL 	v, v1, v2 					: STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
	-- Segnali di feed-back
	SIGNAL 	v1a0, v2a1, v1a0_piu_v2a1 	: STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
	-- Segnali di feed-forward
	SIGNAL v1b1, v2b2, v1b1_piu_v2b2 	: STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
	-- Segnali di ingresso e uscita dai registri di ingresso e uscita
	SIGNAL data_in, data_out, vb0			: STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
	-- Segnali di supporto per la moltiplicazione
	SIGNAL v1a0_f, v2a1_f, v1b1_f, v2b2_f, vb0_f : 	STD_LOGIC_VECTOR(Nb*2-1 DOWNTO 0);

	-- Segnali di controllo
	SIGNAL REG_CTRL_1_OUT				: STD_LOGIC;


	--------- BEGIN ---------
BEGIN

	-- 	registro di ingresso dei dati  DIN -> d_in
	-- questo registro viene resettato dal segnale di ingresso dato
	-- che non c' la control unit
	Reg_in: register_nbit
		GENERIC MAP(Nb)
		PORT MAP(		d_in,
						VIN, CLK, RST_n,
						data_in);

	-- Registro centrale che ritarda di uno v: v -> v1
	Reg_delay_1 : register_nbit
		GENERIC MAP(Nb)
		PORT MAP(		v,
						REG_CTRL_1_OUT, CLK, RST_n,
						v1);


	-- Registro centrale che ritarda di uno v1: v1 -> v2
	Reg_delay_2 : register_nbit
		GENERIC MAP(Nb)
		PORT MAP(		v1,
						REG_CTRL_1_OUT, CLK, RST_n,
						v2);

	-- Registro di uscita d_out -> DOUT
	Reg_out: register_nbit
		GENERIC MAP(Nb)
		PORT MAP(		data_out,
						REG_CTRL_1_OUT, CLK, RST_n,
						d_out);

	-- Collegamenti e operazioni di somma e moltiplicazione

	-- Sommo l'uscita del segnale del registro Reg_in (ossia d_in)
	-- al segnale di feed-back v1ao_piu_v2a1, questa somma va in v
	v <= std_logic_vector(signed(data_in) + signed(v1a0_piu_v2a1));

	-- v viene moltiplicato per b0 ottenendo il dato da sommare alla
	-- di feed-forward
	vb0_f <= std_logic_vector(signed(v) * signed(B(0)));
	vb0 <= vb0_f(Nb*2-1 downto Nb);
	
	-- Il dato v verr ritardato da Reg_delay_1 diventando v1
	-- a questo punto si effettuano le  moltiplicazioni:
	-- v1*a0 per il feed-back
	v1a0_f <= std_logic_vector(signed(v1) * signed(A(0)));
	v1a0 <= v1a0_f(Nb*2-1 downto Nb);
	
	-- v1*b1 per il feed-forward
	v1b1_f <= std_logic_vector(signed(v1) * signed(B(1)));
	v1b1 <= v1b1_f(Nb*2-1 downto Nb);
	
	-- Dopo un'ulteriore ritardo v1 diventa v2 e dev'essere 
	-- moltiplicato per:
	-- v2*a1  per il feed-back
	v2a1_f <= std_logic_vector(signed(v2) * signed(A(1)));
	v2a1 <= v2a1_f(Nb*2-1 downto Nb);
	
 	-- v2*b2  per il feed-forward
	v2b2_f <= std_logic_vector(signed(v2) * signed(B(2)));
	v2b2 <= v2b2_f(Nb*2-1 downto Nb); 
	
	-- Viene ora generato il dato di feed-back finale
	v1a0_piu_v2a1 <= std_logic_vector(signed(v1a0) + signed(v2a1));
	-- Viene generato il dato di feed-forward
	v1b1_piu_v2b2 <= std_logic_vector(signed(v1b1) + signed(v2b2));

	-- Infine genero l'uscita dal feed-forward 
	data_out <= std_logic_vector(signed(vb0) + signed(v1b1_piu_v2b2));

	v_out <= v;
	v1_out <= v1;
	v2_out <= v2;

	---	 CONTROLLO  ---------

	Reg_ctrl_1 : register_nbit
		GENERIC MAP(1)
		PORT MAP( data_in(0) => VIN,
				EN => '1',
				CLK => CLK,
				RST_n => RST_n,
				data_out(0) => Reg_ctrl_1_out);

	Reg_ctrl_2 : register_nbit
		GENERIC MAP(1)
		PORT MAP ( data_in(0) => Reg_ctrl_1_out,
				EN => '1',
				CLK => CLK,
				RST_n => RST_n,
				data_out(0) => VOUT);




END behavioral;
