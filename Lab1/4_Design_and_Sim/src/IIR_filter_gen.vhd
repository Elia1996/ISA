-- NAME 
--		IIR generic filter
-- DESCRIPTION
-- 		Questa è l'architettura di un filtro IIR di ordine N, e numero 
--		di bit Nb, entrambi vanno settati nel package type_for_IIR_pkg
-- 		instanziato sotto. 
--		L'equazione implementata è:
--		y(z) = (b0 + z^-1*b1 + z^-2*b2)/(1 - z^-1*a0 -z^-2*a1)
-- 		ovvero in notazione nel tempo
--		yi = xi*b0 + x(i-1)*bi + x(i-2)*b2 - y(i-1)*a0 - y(i-2)*a1
-- 		é stata riportata l'equazione per un filtro di ordine 2.
-- AUTHOR
-- 		Fiore, Neri, Ribaldone, Zheng
-- VHDL NOTATION
--		 keyword in MAIUSCOLO (es: STD_LOGIC)
--		 dati in minuscolo (es: data_in)
--		 segnali di controllo in MAIUSCOLO (es: EN)
--		 componenti instanziati con l'iniziale maiuscola (es: Shift_register_1)
--		 i segnali attivi bassi con _n finale (es: RST_n)

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

-- pacchetto per definire un nuovo type di dato (per avere interfacce pi snelle)
PACKAGE type_for_IIR_pkg IS
	CONSTANT Nb : NATURAL := 12;
	CONSTANT N : NATURAL := 2
	-- feed-back constant called a
	TYPE FB_COEFF_A IS ARRAY(N-1 DOWNTO 0) OF DATA;
	-- feed-forward constant called b
	TYPE FF_COEFF_B IS ARRAY(N DOWNTO 0) OF DATA;
	-- generic data vector
	TYPE DATA IS DATA;
END PACKAGE;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.all;
USE work.type_for_IIR_pkg.all;


ENTITY IIR_filter IS
PORT(		DIN			      	: IN DATA;
			CLK, RST_n 			: IN STD_LOGIC;
			VIN              	: IN STD_LOGIC;
			A					: IN FB_COEFF_A;
			B					: IN FF_COEFF_B;
			DOUT		         : OUT DATA;
			VOUT			      : OUT STD_LOGIC);
END IIR_filter;


ARCHITECTURE behavioral OF IIR_filter IS

--------- COMPONENTS ---------
COMPONENT register_nbit IS
GENERIC(	N 					: NATURAL:=Nb);
PORT(		data_in 			: IN DATA;
			EN, CLK, RST_n : IN STD_LOGIC;
			data_out		    : OUT DATA);
END COMPONENT register_nbit;


--------- SIGNALS ---------

-- Segnali centrali ritardati
SIGNAL 	v, v1, v2 					: DATA;
-- Segnali di feed-back
SIGNAL 	v1a0, v2a1, v1a0_piu_v2a1 	: DATA;
-- Segnali di feed-forward
SIGNAL v1b1, v2b2, v1b1_piu_v2b2 	: DATA;
-- Segnali di ingresso e uscita dai registri di ingresso e uscita
SIGNAL d_in, d_out 					: DATA;


--------- BEGIN ---------
BEGIN

-- 	registro di ingresso dei dati  DIN -> d_in
-- questo registro viene resettato dal segnale di ingresso dato
-- che non c'è la control unit
Reg_in: register_nbit
	GENERIC MAP(Nb)
	PORT MAP(		DIN,
					V_IN, CLK, RST_n,
					d_in);

-- Registro centrale che ritarda di uno v: v -> v1
Reg_delay_1 : register_nbit
	GENERIC MAP(Nb)
	PORT MAP(		v,
					V_IN, CLK, RST_n,
					v1);


-- Registro centrale che ritarda di uno v1: v1 -> v2
Reg_delay_2 : register_nbit
	GENERIC MAP(Nb)
	PORT MAP(		v1,
					V_IN, CLK, RST_n,
					v2);

-- Registro di uscita d_out -> DOUT
Reg_out: register_nbit
	GENERIC MAP(Nb)
	PORT MAP(		d_out,
					V_IN, CLK, RST_n,
					DOUT);

-- Collegamenti e operazioni di somma e moltiplicazione

-- Sommo l'uscita del segnale del registro Reg_in (ossia d_in)
-- al segnale di feed-back v1ao_piu_v2a1, questa somma va in v
v <= d_in + v1a0_piu_v2a1;

-- v viene moltiplicato per b0 ottenendo il dato da sommare alla
-- di feed-forward
vb0 <= v * B(0);

-- Il dato v verrà ritardato da Reg_delay_1 diventando v1
-- a questo punto si effettuano le  moltiplicazioni:
-- v1*a0 per il feed-back
v1a0 <= v1 * A(0);
-- v1*b1 per il feed-forward
v1b1 <= v1 * B(1);

-- Dopo un'ulteriore ritardo v1 diventa v2 e dev'essere 
-- moltiplicato per:
-- v2*a1  per il feed-back
v2a1 <= v2 * A(1);
-- v2*b2  per il feed-forward
v2b2 <= v2 * B(2);

-- Viene ora generato il dato di feed-back finale
v1a0_piu_v2a1 <= v1a0 + v2a1;
-- Viene generato il dato di feed-forward
v1b1_piu_v2b2 <= v1b1 + v2b2;

-- Infine genero l'uscita dal feed-forward 
d_out <= vb0 + v1b1_piu_v2b2;

---	 CONTROLLO  ---------
Reg_ctrl_1 : register_nbit
	GENERIC MAP(1)
	PORT

Reg_ctrl_2 : register_nbit
	GENERIC MAP(1)
	PORT

END behavioral;
