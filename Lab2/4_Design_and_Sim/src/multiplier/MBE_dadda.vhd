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

ENTITY MBE_dadda IS
PORT(	pp_mat			: IN MATRIX_PP;
	sign_pp			: IN STD_LOGIC_VECTOR(row_pp-2 DOWNTO 0);
	data_out1		: OUT STD_LOGIC_VECTOR(2*Nb-1 DOWNTO 0);
	data_out2		: OUT STD_LOGIC_VECTOR(2*Nb-1 DOWNTO 0));
END MBE_dadda;

ARCHITECTURE structure OF MBE_dadda IS

------ COMPONENTS -------

COMPONENT FA IS 
PORT(	a,b,cin	: IN STD_LOGIC;
	s,cout	: OUT STD_LOGIC);
END COMPONENT FA;

COMPONENT HA IS 
PORT(	a,b	: IN STD_LOGIC;
	s,cout	: OUT STD_LOGIC);
END COMPONENT HA;

------ SIGNALS -------

SIGNAL mult_vmat	: VECT_MATRIX := (others => ( others => (others => "0")));


BEGIN


	------------------------------------------
	-- PYRAMID
	------------------------------------------

		mult_vmat(0,0)(13 DOWNTO 0) <= pp_mat(0)(13 DOWNTO 0);
		mult_vmat(0,1)(0) <= sign_pp(0);
		mult_vmat(0,1)(13 DOWNTO 2) <= pp_mat(1)(11 DOWNTO 0);
		mult_vmat(0,2)(2) <= sign_pp(1);
		mult_vmat(0,4)(14 DOWNTO 14) <= pp_mat(1)(12 DOWNTO 12);
		mult_vmat(0,2)(13 DOWNTO 4) <= pp_mat(2)(9 DOWNTO 0);
		mult_vmat(0,3)(4) <= sign_pp(2);
		mult_vmat(0,3)(16 DOWNTO 14) <= pp_mat(2)(12 DOWNTO 10);
		mult_vmat(0,3)(13 DOWNTO 6) <= pp_mat(3)(7 DOWNTO 0);
		mult_vmat(0,4)(6) <= sign_pp(3);
		mult_vmat(0,2)(18 DOWNTO 14) <= pp_mat(3)(12 DOWNTO 8);
		mult_vmat(0,4)(13 DOWNTO 8) <= pp_mat(4)(5 DOWNTO 0);
		mult_vmat(0,5)(8) <= sign_pp(4);
		mult_vmat(0,1)(19 DOWNTO 14) <= pp_mat(4)(11 DOWNTO 6);
		mult_vmat(0,5)(13 DOWNTO 10) <= pp_mat(5)(3 DOWNTO 0);
		mult_vmat(0,0)(19 DOWNTO 14) <= pp_mat(5)(9 DOWNTO 4);


	------------------------------------------
	-- LEVEL 1
	------------------------------------------


		-- COLUMN 1
		mult_vmat(1,0)(0) <= mult_vmat(0,0)(0);
		mult_vmat(1,1)(0) <= mult_vmat(0,1)(0);

		-- COLUMN 2
		mult_vmat(1,0)(1) <= mult_vmat(0,0)(1);

		-- COLUMN 3
		mult_vmat(1,0)(2) <= mult_vmat(0,0)(2);
		mult_vmat(1,1)(2) <= mult_vmat(0,1)(2);
		mult_vmat(1,2)(2) <= mult_vmat(0,2)(2);

		-- COLUMN 4
		mult_vmat(1,0)(3) <= mult_vmat(0,0)(3);
		mult_vmat(1,1)(3) <= mult_vmat(0,1)(3);

		-- COLUMN 5
		mult_vmat(1,0)(4) <= mult_vmat(0,0)(4);
		mult_vmat(1,1)(4) <= mult_vmat(0,1)(4);
		mult_vmat(1,2)(4) <= mult_vmat(0,2)(4);
		mult_vmat(1,3)(4) <= mult_vmat(0,3)(4);

		-- COLUMN 6
		mult_vmat(1,0)(5) <= mult_vmat(0,0)(5);
		mult_vmat(1,1)(5) <= mult_vmat(0,1)(5);
		mult_vmat(1,2)(5) <= mult_vmat(0,2)(5);

		-- COLUMN 7

		HA_0_6: HA PORT MAP (
			mult_vmat(0,0)(6),
			mult_vmat(0,1)(6),
			mult_vmat(1,0)(6),
			mult_vmat(1,0)(7)
		);

		mult_vmat(1,1)(6) <= mult_vmat(0,2)(6);
		mult_vmat(1,2)(6) <= mult_vmat(0,3)(6);
		mult_vmat(1,3)(6) <= mult_vmat(0,4)(6);

		-- COLUMN 8

		HA_0_7: HA PORT MAP (
			mult_vmat(0,0)(7),
			mult_vmat(0,1)(7),
			mult_vmat(1,1)(7),
			mult_vmat(1,0)(8)
		);

		mult_vmat(1,2)(7) <= mult_vmat(0,2)(7);
		mult_vmat(1,3)(7) <= mult_vmat(0,3)(7);

		-- COLUMN 9

		FA_0_8_1: FA PORT MAP (
			mult_vmat(0,0)(8),
			mult_vmat(0,1)(8),
			mult_vmat(0,2)(8),
			mult_vmat(1,1)(8),
			mult_vmat(1,0)(9)
		);


		HA_0_8: HA PORT MAP (
			mult_vmat(0,3)(8),
			mult_vmat(0,4)(8),
			mult_vmat(1,2)(8),
			mult_vmat(1,1)(9)
		);

		mult_vmat(1,3)(8) <= mult_vmat(0,5)(8);

		-- COLUMN 10

		FA_0_9_1: FA PORT MAP (
			mult_vmat(0,0)(9),
			mult_vmat(0,1)(9),
			mult_vmat(0,2)(9),
			mult_vmat(1,2)(9),
			mult_vmat(1,0)(10)
		);


		HA_0_9: HA PORT MAP (
			mult_vmat(0,3)(9),
			mult_vmat(0,4)(9),
			mult_vmat(1,3)(9),
			mult_vmat(1,1)(10)
		);


		-- COLUMN 11

		FA_0_10_1: FA PORT MAP (
			mult_vmat(0,0)(10),
			mult_vmat(0,1)(10),
			mult_vmat(0,2)(10),
			mult_vmat(1,2)(10),
			mult_vmat(1,0)(11)
		);


		FA_0_10_2: FA PORT MAP (
			mult_vmat(0,3)(10),
			mult_vmat(0,4)(10),
			mult_vmat(0,5)(10),
			mult_vmat(1,3)(10),
			mult_vmat(1,1)(11)
		);


		-- COLUMN 12

		FA_0_11_1: FA PORT MAP (
			mult_vmat(0,0)(11),
			mult_vmat(0,1)(11),
			mult_vmat(0,2)(11),
			mult_vmat(1,2)(11),
			mult_vmat(1,0)(12)
		);


		FA_0_11_2: FA PORT MAP (
			mult_vmat(0,3)(11),
			mult_vmat(0,4)(11),
			mult_vmat(0,5)(11),
			mult_vmat(1,3)(11),
			mult_vmat(1,1)(12)
		);


		-- COLUMN 13

		FA_0_12_1: FA PORT MAP (
			mult_vmat(0,0)(12),
			mult_vmat(0,1)(12),
			mult_vmat(0,2)(12),
			mult_vmat(1,2)(12),
			mult_vmat(1,0)(13)
		);


		FA_0_12_2: FA PORT MAP (
			mult_vmat(0,3)(12),
			mult_vmat(0,4)(12),
			mult_vmat(0,5)(12),
			mult_vmat(1,3)(12),
			mult_vmat(1,1)(13)
		);


		-- COLUMN 14

		FA_0_13_1: FA PORT MAP (
			mult_vmat(0,0)(13),
			mult_vmat(0,1)(13),
			mult_vmat(0,2)(13),
			mult_vmat(1,2)(13),
			mult_vmat(1,0)(14)
		);


		FA_0_13_2: FA PORT MAP (
			mult_vmat(0,3)(13),
			mult_vmat(0,4)(13),
			mult_vmat(0,5)(13),
			mult_vmat(1,3)(13),
			mult_vmat(1,1)(14)
		);


		-- COLUMN 15

		FA_0_14_1: FA PORT MAP (
			mult_vmat(0,0)(14),
			mult_vmat(0,1)(14),
			mult_vmat(0,2)(14),
			mult_vmat(1,2)(14),
			mult_vmat(1,0)(15)
		);


		HA_0_14: HA PORT MAP (
			mult_vmat(0,3)(14),
			mult_vmat(0,4)(14),
			mult_vmat(1,3)(14),
			mult_vmat(1,1)(15)
		);


		-- COLUMN 16

		FA_0_15_1: FA PORT MAP (
			mult_vmat(0,0)(15),
			mult_vmat(0,1)(15),
			mult_vmat(0,2)(15),
			mult_vmat(1,2)(15),
			mult_vmat(1,0)(16)
		);

		mult_vmat(1,3)(15) <= mult_vmat(0,3)(15);

		-- COLUMN 17

		HA_0_16: HA PORT MAP (
			mult_vmat(0,0)(16),
			mult_vmat(0,1)(16),
			mult_vmat(1,1)(16),
			mult_vmat(1,0)(17)
		);

		mult_vmat(1,2)(16) <= mult_vmat(0,2)(16);
		mult_vmat(1,3)(16) <= mult_vmat(0,3)(16);

		-- COLUMN 18
		mult_vmat(1,1)(17) <= mult_vmat(0,0)(17);
		mult_vmat(1,2)(17) <= mult_vmat(0,1)(17);
		mult_vmat(1,3)(17) <= mult_vmat(0,2)(17);

		-- COLUMN 19
		mult_vmat(1,0)(18) <= mult_vmat(0,0)(18);
		mult_vmat(1,1)(18) <= mult_vmat(0,1)(18);
		mult_vmat(1,2)(18) <= mult_vmat(0,2)(18);

		-- COLUMN 20
		mult_vmat(1,0)(19) <= mult_vmat(0,0)(19);
		mult_vmat(1,1)(19) <= mult_vmat(0,1)(19);


	------------------------------------------
	-- LEVEL 2
	------------------------------------------


		-- COLUMN 1
		mult_vmat(2,0)(0) <= mult_vmat(1,0)(0);
		mult_vmat(2,1)(0) <= mult_vmat(1,1)(0);

		-- COLUMN 2
		mult_vmat(2,0)(1) <= mult_vmat(1,0)(1);

		-- COLUMN 3
		mult_vmat(2,0)(2) <= mult_vmat(1,0)(2);
		mult_vmat(2,1)(2) <= mult_vmat(1,1)(2);
		mult_vmat(2,2)(2) <= mult_vmat(1,2)(2);

		-- COLUMN 4
		mult_vmat(2,0)(3) <= mult_vmat(1,0)(3);
		mult_vmat(2,1)(3) <= mult_vmat(1,1)(3);

		-- COLUMN 5

		HA_1_4: HA PORT MAP (
			mult_vmat(1,0)(4),
			mult_vmat(1,1)(4),
			mult_vmat(2,0)(4),
			mult_vmat(2,0)(5)
		);

		mult_vmat(2,1)(4) <= mult_vmat(1,2)(4);
		mult_vmat(2,2)(4) <= mult_vmat(1,3)(4);

		-- COLUMN 6

		HA_1_5: HA PORT MAP (
			mult_vmat(1,0)(5),
			mult_vmat(1,1)(5),
			mult_vmat(2,1)(5),
			mult_vmat(2,0)(6)
		);

		mult_vmat(2,2)(5) <= mult_vmat(1,2)(5);

		-- COLUMN 7

		FA_1_6_1: FA PORT MAP (
			mult_vmat(1,0)(6),
			mult_vmat(1,1)(6),
			mult_vmat(1,2)(6),
			mult_vmat(2,1)(6),
			mult_vmat(2,0)(7)
		);

		mult_vmat(2,2)(6) <= mult_vmat(1,3)(6);

		-- COLUMN 8

		FA_1_7_1: FA PORT MAP (
			mult_vmat(1,0)(7),
			mult_vmat(1,1)(7),
			mult_vmat(1,2)(7),
			mult_vmat(2,1)(7),
			mult_vmat(2,0)(8)
		);

		mult_vmat(2,2)(7) <= mult_vmat(1,3)(7);

		-- COLUMN 9

		FA_1_8_1: FA PORT MAP (
			mult_vmat(1,0)(8),
			mult_vmat(1,1)(8),
			mult_vmat(1,2)(8),
			mult_vmat(2,1)(8),
			mult_vmat(2,0)(9)
		);

		mult_vmat(2,2)(8) <= mult_vmat(1,3)(8);

		-- COLUMN 10

		FA_1_9_1: FA PORT MAP (
			mult_vmat(1,0)(9),
			mult_vmat(1,1)(9),
			mult_vmat(1,2)(9),
			mult_vmat(2,1)(9),
			mult_vmat(2,0)(10)
		);

		mult_vmat(2,2)(9) <= mult_vmat(1,3)(9);

		-- COLUMN 11

		FA_1_10_1: FA PORT MAP (
			mult_vmat(1,0)(10),
			mult_vmat(1,1)(10),
			mult_vmat(1,2)(10),
			mult_vmat(2,1)(10),
			mult_vmat(2,0)(11)
		);

		mult_vmat(2,2)(10) <= mult_vmat(1,3)(10);

		-- COLUMN 12

		FA_1_11_1: FA PORT MAP (
			mult_vmat(1,0)(11),
			mult_vmat(1,1)(11),
			mult_vmat(1,2)(11),
			mult_vmat(2,1)(11),
			mult_vmat(2,0)(12)
		);

		mult_vmat(2,2)(11) <= mult_vmat(1,3)(11);

		-- COLUMN 13

		FA_1_12_1: FA PORT MAP (
			mult_vmat(1,0)(12),
			mult_vmat(1,1)(12),
			mult_vmat(1,2)(12),
			mult_vmat(2,1)(12),
			mult_vmat(2,0)(13)
		);

		mult_vmat(2,2)(12) <= mult_vmat(1,3)(12);

		-- COLUMN 14

		FA_1_13_1: FA PORT MAP (
			mult_vmat(1,0)(13),
			mult_vmat(1,1)(13),
			mult_vmat(1,2)(13),
			mult_vmat(2,1)(13),
			mult_vmat(2,0)(14)
		);

		mult_vmat(2,2)(13) <= mult_vmat(1,3)(13);

		-- COLUMN 15

		FA_1_14_1: FA PORT MAP (
			mult_vmat(1,0)(14),
			mult_vmat(1,1)(14),
			mult_vmat(1,2)(14),
			mult_vmat(2,1)(14),
			mult_vmat(2,0)(15)
		);

		mult_vmat(2,2)(14) <= mult_vmat(1,3)(14);

		-- COLUMN 16

		FA_1_15_1: FA PORT MAP (
			mult_vmat(1,0)(15),
			mult_vmat(1,1)(15),
			mult_vmat(1,2)(15),
			mult_vmat(2,1)(15),
			mult_vmat(2,0)(16)
		);

		mult_vmat(2,2)(15) <= mult_vmat(1,3)(15);

		-- COLUMN 17

		FA_1_16_1: FA PORT MAP (
			mult_vmat(1,0)(16),
			mult_vmat(1,1)(16),
			mult_vmat(1,2)(16),
			mult_vmat(2,1)(16),
			mult_vmat(2,0)(17)
		);

		mult_vmat(2,2)(16) <= mult_vmat(1,3)(16);

		-- COLUMN 18

		FA_1_17_1: FA PORT MAP (
			mult_vmat(1,0)(17),
			mult_vmat(1,1)(17),
			mult_vmat(1,2)(17),
			mult_vmat(2,1)(17),
			mult_vmat(2,0)(18)
		);

		mult_vmat(2,2)(17) <= mult_vmat(1,3)(17);

		-- COLUMN 19

		HA_1_18: HA PORT MAP (
			mult_vmat(1,0)(18),
			mult_vmat(1,1)(18),
			mult_vmat(2,1)(18),
			mult_vmat(2,0)(19)
		);

		mult_vmat(2,2)(18) <= mult_vmat(1,2)(18);

		-- COLUMN 20
		mult_vmat(2,1)(19) <= mult_vmat(1,0)(19);
		mult_vmat(2,2)(19) <= mult_vmat(1,1)(19);


	------------------------------------------
	-- LEVEL 3
	------------------------------------------


		-- COLUMN 1
		mult_vmat(3,0)(0) <= mult_vmat(2,0)(0);
		mult_vmat(3,1)(0) <= mult_vmat(2,1)(0);

		-- COLUMN 2
		mult_vmat(3,0)(1) <= mult_vmat(2,0)(1);

		-- COLUMN 3

		HA_2_2: HA PORT MAP (
			mult_vmat(2,0)(2),
			mult_vmat(2,1)(2),
			mult_vmat(3,0)(2),
			mult_vmat(3,0)(3)
		);

		mult_vmat(3,1)(2) <= mult_vmat(2,2)(2);

		-- COLUMN 4

		HA_2_3: HA PORT MAP (
			mult_vmat(2,0)(3),
			mult_vmat(2,1)(3),
			mult_vmat(3,1)(3),
			mult_vmat(3,0)(4)
		);


		-- COLUMN 5

		FA_2_4_1: FA PORT MAP (
			mult_vmat(2,0)(4),
			mult_vmat(2,1)(4),
			mult_vmat(2,2)(4),
			mult_vmat(3,1)(4),
			mult_vmat(3,0)(5)
		);


		-- COLUMN 6

		FA_2_5_1: FA PORT MAP (
			mult_vmat(2,0)(5),
			mult_vmat(2,1)(5),
			mult_vmat(2,2)(5),
			mult_vmat(3,1)(5),
			mult_vmat(3,0)(6)
		);


		-- COLUMN 7

		FA_2_6_1: FA PORT MAP (
			mult_vmat(2,0)(6),
			mult_vmat(2,1)(6),
			mult_vmat(2,2)(6),
			mult_vmat(3,1)(6),
			mult_vmat(3,0)(7)
		);


		-- COLUMN 8

		FA_2_7_1: FA PORT MAP (
			mult_vmat(2,0)(7),
			mult_vmat(2,1)(7),
			mult_vmat(2,2)(7),
			mult_vmat(3,1)(7),
			mult_vmat(3,0)(8)
		);


		-- COLUMN 9

		FA_2_8_1: FA PORT MAP (
			mult_vmat(2,0)(8),
			mult_vmat(2,1)(8),
			mult_vmat(2,2)(8),
			mult_vmat(3,1)(8),
			mult_vmat(3,0)(9)
		);


		-- COLUMN 10

		FA_2_9_1: FA PORT MAP (
			mult_vmat(2,0)(9),
			mult_vmat(2,1)(9),
			mult_vmat(2,2)(9),
			mult_vmat(3,1)(9),
			mult_vmat(3,0)(10)
		);


		-- COLUMN 11

		FA_2_10_1: FA PORT MAP (
			mult_vmat(2,0)(10),
			mult_vmat(2,1)(10),
			mult_vmat(2,2)(10),
			mult_vmat(3,1)(10),
			mult_vmat(3,0)(11)
		);


		-- COLUMN 12

		FA_2_11_1: FA PORT MAP (
			mult_vmat(2,0)(11),
			mult_vmat(2,1)(11),
			mult_vmat(2,2)(11),
			mult_vmat(3,1)(11),
			mult_vmat(3,0)(12)
		);


		-- COLUMN 13

		FA_2_12_1: FA PORT MAP (
			mult_vmat(2,0)(12),
			mult_vmat(2,1)(12),
			mult_vmat(2,2)(12),
			mult_vmat(3,1)(12),
			mult_vmat(3,0)(13)
		);


		-- COLUMN 14

		FA_2_13_1: FA PORT MAP (
			mult_vmat(2,0)(13),
			mult_vmat(2,1)(13),
			mult_vmat(2,2)(13),
			mult_vmat(3,1)(13),
			mult_vmat(3,0)(14)
		);


		-- COLUMN 15

		FA_2_14_1: FA PORT MAP (
			mult_vmat(2,0)(14),
			mult_vmat(2,1)(14),
			mult_vmat(2,2)(14),
			mult_vmat(3,1)(14),
			mult_vmat(3,0)(15)
		);


		-- COLUMN 16

		FA_2_15_1: FA PORT MAP (
			mult_vmat(2,0)(15),
			mult_vmat(2,1)(15),
			mult_vmat(2,2)(15),
			mult_vmat(3,1)(15),
			mult_vmat(3,0)(16)
		);


		-- COLUMN 17

		FA_2_16_1: FA PORT MAP (
			mult_vmat(2,0)(16),
			mult_vmat(2,1)(16),
			mult_vmat(2,2)(16),
			mult_vmat(3,1)(16),
			mult_vmat(3,0)(17)
		);


		-- COLUMN 18

		FA_2_17_1: FA PORT MAP (
			mult_vmat(2,0)(17),
			mult_vmat(2,1)(17),
			mult_vmat(2,2)(17),
			mult_vmat(3,1)(17),
			mult_vmat(3,0)(18)
		);


		-- COLUMN 19

		FA_2_18_1: FA PORT MAP (
			mult_vmat(2,0)(18),
			mult_vmat(2,1)(18),
			mult_vmat(2,2)(18),
			mult_vmat(3,1)(18),
			mult_vmat(3,0)(19)
		);


		-- COLUMN 20

		FA_2_19_1: FA PORT MAP (
			mult_vmat(2,0)(19),
			mult_vmat(2,1)(19),
			mult_vmat(2,2)(19),
			mult_vmat(3,1)(19),

			open
		);




	------------------------------------------
	-- OUTPUTS
	------------------------------------------

		data_out1 <= mult_vmat(nl-1,0);
		data_out2 <= mult_vmat(nl-1,1);

END structure;
