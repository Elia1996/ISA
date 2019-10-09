-- IIR top file
-- high-speed/low-power group
-- Fiore, Neri, Ribaldone, Zheng
-- 
-- keyword in MAIUSCOLO (es: STD_LOGIC)
-- dati in minuscolo (es: data_in)
-- segnali di controllo in MAIUSCOLO (es: EN)
-- componenti instanziati con l'iniziale maiuscola (es: Shift_register_1)
-- i segnali attivi bassi con _n finale (es: RST_n)

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

 pacchetto per definire un nuovo type di dato (per avere interfacce più snelle)
PACKAGE type_for_IIR_pkg IS
	CONSTANT Nb : NATURAL := 12;
	TYPE coeff_a IS ARRAY(1 DOWNTO 0) OF STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
	TYPE coeff_b IS ARRAY(2 DOWNTO 0) OF STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
END PACKAGE;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.all;
USE work.type_for_IIR_pkg.all;


ENTITY IIR_filter IS
PORT(		d_in			      : IN STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
			a						: IN coeff_a;
			b						: IN coeff_b;
			CLK, RST_n 			: IN STD_LOGIC;
			V_IN              : IN STD_LOGIC;
			d_out		         : OUT STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
			V_OUT			      : OUT STD_LOGIC);
END IIR_filter;


ARCHITECTURE behavioral OF IIR_filter IS
--------- COMPONENTS ---------
COMPONENT register_nbit IS
GENERIC(	N 					: NATURAL:=8);
PORT(		data_in 			: IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			EN, CLK, RST_n : IN STD_LOGIC;
			data_out 		    : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
END COMPONENT register_nbit;

--------- SIGNALS ---------
SIGNAL 	out_reg_in, reg_del_x1, reg_del_x2 		: STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);
SIGNAL 	in_reg_out, reg_del_y1, reg_del_y2 		: STD_LOGIC_VECTOR(Nb-1 DOWNTO 0);


--------- BEGIN ---------
BEGIN
-- REGISTRI DI NGRESSO
In_reg : register_nbit
	GENERIC MAP(Nb)
	PORT MAP(	d_in,
					V_IN, CLK, RST_n,
					out_reg_in);
				
Delay1_reg_in : register_nbit
	GENERIC MAP(Nb)
	PORT MAP(	out_reg_in,
					V_IN, CLK, RST_n,
					reg_del_x1);
					
Delay2_reg_in : register_nbit
	GENERIC MAP(Nb)
	PORT MAP(	reg_del_x1,
					V_IN, CLK, RST_n,
					reg_del_x2);
					
-- REGISTRI DI USCITA					
Out_reg : register_nbit
	GENERIC MAP(Nb)
	PORT MAP(	in_reg_out,
					V_IN, CLK, RST_n,
					d_out);
				
Delay1_reg_out : register_nbit
	GENERIC MAP(Nb)
	PORT MAP(	in_reg_out,
					V_IN, CLK, RST_n,
					reg_del_y1);
					
Delay2_reg_out : register_nbit
	GENERIC MAP(Nb)
	PORT MAP(	reg_del_y1,
					V_IN, CLK, RST_n,
					reg_del_y2);

				


END behavioral;