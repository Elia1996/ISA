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

SIGNAL mult_vmat	: VECT_MATRIX;


BEGIN


	------------------------------------------
	-- PYRAMID
	------------------------------------------

		mult_vmat(0,0)(19 DOWNTO 0) <= pp_mat(0)(19 DOWNTO 0);
		mult_vmat(0,1)(0) <= sign_pp(0);
		mult_vmat(0,1)(19 DOWNTO 2) <= pp_mat(1)(17 DOWNTO 0);
		mult_vmat(0,2)(2) <= sign_pp(1);
		mult_vmat(0,7)(20 DOWNTO 20) <= pp_mat(1)(15 DOWNTO 15);
		mult_vmat(0,2)(19 DOWNTO 4) <= pp_mat(2)(15 DOWNTO 0);
		mult_vmat(0,3)(4) <= sign_pp(2);
		mult_vmat(0,6)(22 DOWNTO 20) <= pp_mat(2)(15 DOWNTO 13);
		mult_vmat(0,3)(19 DOWNTO 6) <= pp_mat(3)(13 DOWNTO 0);
		mult_vmat(0,4)(6) <= sign_pp(3);
		mult_vmat(0,5)(24 DOWNTO 20) <= pp_mat(3)(15 DOWNTO 11);
		mult_vmat(0,4)(19 DOWNTO 8) <= pp_mat(4)(11 DOWNTO 0);
		mult_vmat(0,5)(8) <= sign_pp(4);
		mult_vmat(0,4)(26 DOWNTO 20) <= pp_mat(4)(15 DOWNTO 9);
		mult_vmat(0,5)(19 DOWNTO 10) <= pp_mat(5)(9 DOWNTO 0);
		mult_vmat(0,6)(10) <= sign_pp(5);
		mult_vmat(0,3)(28 DOWNTO 20) <= pp_mat(5)(15 DOWNTO 7);
		mult_vmat(0,6)(19 DOWNTO 12) <= pp_mat(6)(7 DOWNTO 0);
		mult_vmat(0,7)(12) <= sign_pp(6);
		mult_vmat(0,2)(30 DOWNTO 20) <= pp_mat(6)(15 DOWNTO 5);
		mult_vmat(0,7)(19 DOWNTO 14) <= pp_mat(7)(5 DOWNTO 0);
		mult_vmat(0,8)(14) <= sign_pp(7);
		mult_vmat(0,1)(31 DOWNTO 20) <= pp_mat(7)(14 DOWNTO 3);
		mult_vmat(0,8)(19 DOWNTO 16) <= pp_mat(8)(3 DOWNTO 0);
		mult_vmat(0,0)(31 DOWNTO 20) <= pp_mat(8)(12 DOWNTO 1);


	------------------------------------------
	-- LEVEL 1
	------------------------------------------


		-- COLUMN 1
		mult_vmat(1)(0)(0) <= mult_vmat(0)(0)(0);
		mult_vmat(1)(1)(0) <= mult_vmat(0)(1)(0);

		-- COLUMN 2
		mult_vmat(1)(0)(1) <= mult_vmat(0)(0)(1);

		-- COLUMN 3
		mult_vmat(1)(0)(2) <= mult_vmat(0)(0)(2);
		mult_vmat(1)(1)(2) <= mult_vmat(0)(1)(2);
		mult_vmat(1)(2)(2) <= mult_vmat(0)(2)(2);

		-- COLUMN 4
		mult_vmat(1)(0)(3) <= mult_vmat(0)(0)(3);
		mult_vmat(1)(1)(3) <= mult_vmat(0)(1)(3);

		-- COLUMN 5
		mult_vmat(1)(0)(4) <= mult_vmat(0)(0)(4);
		mult_vmat(1)(1)(4) <= mult_vmat(0)(1)(4);
		mult_vmat(1)(2)(4) <= mult_vmat(0)(2)(4);
		mult_vmat(1)(3)(4) <= mult_vmat(0)(3)(4);

		-- COLUMN 6
		mult_vmat(1)(0)(5) <= mult_vmat(0)(0)(5);
		mult_vmat(1)(1)(5) <= mult_vmat(0)(1)(5);
		mult_vmat(1)(2)(5) <= mult_vmat(0)(2)(5);

		-- COLUMN 7
		mult_vmat(1)(0)(6) <= mult_vmat(0)(0)(6);
		mult_vmat(1)(1)(6) <= mult_vmat(0)(1)(6);
		mult_vmat(1)(2)(6) <= mult_vmat(0)(2)(6);
		mult_vmat(1)(3)(6) <= mult_vmat(0)(3)(6);
		mult_vmat(1)(4)(6) <= mult_vmat(0)(4)(6);

		-- COLUMN 8
		mult_vmat(1)(0)(7) <= mult_vmat(0)(0)(7);
		mult_vmat(1)(1)(7) <= mult_vmat(0)(1)(7);
		mult_vmat(1)(2)(7) <= mult_vmat(0)(2)(7);
		mult_vmat(1)(3)(7) <= mult_vmat(0)(3)(7);

		-- COLUMN 9
		mult_vmat(1)(0)(8) <= mult_vmat(0)(0)(8);
		mult_vmat(1)(1)(8) <= mult_vmat(0)(1)(8);
		mult_vmat(1)(2)(8) <= mult_vmat(0)(2)(8);
		mult_vmat(1)(3)(8) <= mult_vmat(0)(3)(8);
		mult_vmat(1)(4)(8) <= mult_vmat(0)(4)(8);
		mult_vmat(1)(5)(8) <= mult_vmat(0)(5)(8);

		-- COLUMN 10
		mult_vmat(1)(0)(9) <= mult_vmat(0)(0)(9);
		mult_vmat(1)(1)(9) <= mult_vmat(0)(1)(9);
		mult_vmat(1)(2)(9) <= mult_vmat(0)(2)(9);
		mult_vmat(1)(3)(9) <= mult_vmat(0)(3)(9);
		mult_vmat(1)(4)(9) <= mult_vmat(0)(4)(9);

		-- COLUMN 11

		HA_0_10: HA PORT MAP (
			mult_vmat(0)(0)(10),
			mult_vmat(0)(1)(10),
			mult_vmat(1)(0)(11),
			mult_vmat(1)(0)(10));

		mult_vmat(1)(1)(10) <= mult_vmat(0)(2)(10);
		mult_vmat(1)(2)(10) <= mult_vmat(0)(3)(10);
		mult_vmat(1)(3)(10) <= mult_vmat(0)(4)(10);
		mult_vmat(1)(4)(10) <= mult_vmat(0)(5)(10);
		mult_vmat(1)(5)(10) <= mult_vmat(0)(6)(10);

		-- COLUMN 12

		HA_0_11: HA PORT MAP (
			mult_vmat(0)(0)(11),
			mult_vmat(0)(1)(11),
			mult_vmat(1)(0)(12),
			mult_vmat(1)(1)(11));

		mult_vmat(1)(2)(11) <= mult_vmat(0)(2)(11);
		mult_vmat(1)(3)(11) <= mult_vmat(0)(3)(11);
		mult_vmat(1)(4)(11) <= mult_vmat(0)(4)(11);
		mult_vmat(1)(5)(11) <= mult_vmat(0)(5)(11);

		-- COLUMN 13

		FA_0_12_1: FA PORT MAP (
			mult_vmat(0)(0)(12),
			mult_vmat(0)(1)(12),
			mult_vmat(0)(2)(12),
			mult_vmat(1)(0)(14),
			mult_vmat(1)(1)(12));


		HA_0_12: HA PORT MAP (
			mult_vmat(0)(3)(12),
			mult_vmat(0)(4)(12),
			mult_vmat(1)(1)(13),
			mult_vmat(1)(2)(12));

		mult_vmat(1)(3)(12) <= mult_vmat(0)(5)(12);
		mult_vmat(1)(4)(12) <= mult_vmat(0)(6)(12);
		mult_vmat(1)(5)(12) <= mult_vmat(0)(7)(12);

		-- COLUMN 14

		FA_0_13_1: FA PORT MAP (
			mult_vmat(0)(0)(13),
			mult_vmat(0)(1)(13),
			mult_vmat(0)(2)(13),
			mult_vmat(1)(0)(15),
			mult_vmat(1)(2)(13));


		HA_0_13: HA PORT MAP (
			mult_vmat(0)(3)(13),
			mult_vmat(0)(4)(13),
			mult_vmat(1)(1)(14),
			mult_vmat(1)(3)(13));

		mult_vmat(1)(4)(13) <= mult_vmat(0)(5)(13);
		mult_vmat(1)(5)(13) <= mult_vmat(0)(6)(13);

		-- COLUMN 15

		FA_0_14_1: FA PORT MAP (
			mult_vmat(0)(0)(14),
			mult_vmat(0)(1)(14),
			mult_vmat(0)(2)(14),
			mult_vmat(1)(0)(16),
			mult_vmat(1)(2)(14));


		FA_0_14_2: FA PORT MAP (
			mult_vmat(0)(3)(14),
			mult_vmat(0)(4)(14),
			mult_vmat(0)(5)(14),
			mult_vmat(1)(1)(16),
			mult_vmat(1)(3)(14));


		HA_0_14: HA PORT MAP (
			mult_vmat(0)(6)(14),
			mult_vmat(0)(7)(14),
			mult_vmat(1)(2)(15),
			mult_vmat(1)(4)(14));

		mult_vmat(1)(5)(14) <= mult_vmat(0)(8)(14);

		-- COLUMN 16

		FA_0_15_1: FA PORT MAP (
			mult_vmat(0)(0)(15),
			mult_vmat(0)(1)(15),
			mult_vmat(0)(2)(15),
			mult_vmat(1)(0)(17),
			mult_vmat(1)(3)(15));


		FA_0_15_2: FA PORT MAP (
			mult_vmat(0)(3)(15),
			mult_vmat(0)(4)(15),
			mult_vmat(0)(5)(15),
			mult_vmat(1)(1)(17),
			mult_vmat(1)(4)(15));


		HA_0_15: HA PORT MAP (
			mult_vmat(0)(6)(15),
			mult_vmat(0)(7)(15),
			mult_vmat(1)(2)(16),
			mult_vmat(1)(5)(15));


		-- COLUMN 17

		FA_0_16_1: FA PORT MAP (
			mult_vmat(0)(0)(16),
			mult_vmat(0)(1)(16),
			mult_vmat(0)(2)(16),
			mult_vmat(1)(0)(18),
			mult_vmat(1)(3)(16));


		FA_0_16_2: FA PORT MAP (
			mult_vmat(0)(3)(16),
			mult_vmat(0)(4)(16),
			mult_vmat(0)(5)(16),
			mult_vmat(1)(1)(18),
			mult_vmat(1)(4)(16));


		FA_0_16_3: FA PORT MAP (
			mult_vmat(0)(6)(16),
			mult_vmat(0)(7)(16),
			mult_vmat(0)(8)(16),
			mult_vmat(1)(2)(18),
			mult_vmat(1)(5)(16));


		-- COLUMN 18

		FA_0_17_1: FA PORT MAP (
			mult_vmat(0)(0)(17),
			mult_vmat(0)(1)(17),
			mult_vmat(0)(2)(17),
			mult_vmat(1)(0)(19),
			mult_vmat(1)(3)(17));


		FA_0_17_2: FA PORT MAP (
			mult_vmat(0)(3)(17),
			mult_vmat(0)(4)(17),
			mult_vmat(0)(5)(17),
			mult_vmat(1)(1)(19),
			mult_vmat(1)(4)(17));


		FA_0_17_3: FA PORT MAP (
			mult_vmat(0)(6)(17),
			mult_vmat(0)(7)(17),
			mult_vmat(0)(8)(17),
			mult_vmat(1)(2)(19),
			mult_vmat(1)(5)(17));


		-- COLUMN 19

		FA_0_18_1: FA PORT MAP (
			mult_vmat(0)(0)(18),
			mult_vmat(0)(1)(18),
			mult_vmat(0)(2)(18),
			mult_vmat(1)(0)(20),
			mult_vmat(1)(3)(18));


		FA_0_18_2: FA PORT MAP (
			mult_vmat(0)(3)(18),
			mult_vmat(0)(4)(18),
			mult_vmat(0)(5)(18),
			mult_vmat(1)(1)(20),
			mult_vmat(1)(4)(18));


		FA_0_18_3: FA PORT MAP (
			mult_vmat(0)(6)(18),
			mult_vmat(0)(7)(18),
			mult_vmat(0)(8)(18),
			mult_vmat(1)(2)(20),
			mult_vmat(1)(5)(18));


		-- COLUMN 20

		FA_0_19_1: FA PORT MAP (
			mult_vmat(0)(0)(19),
			mult_vmat(0)(1)(19),
			mult_vmat(0)(2)(19),
			mult_vmat(1)(0)(21),
			mult_vmat(1)(3)(19));


		FA_0_19_2: FA PORT MAP (
			mult_vmat(0)(3)(19),
			mult_vmat(0)(4)(19),
			mult_vmat(0)(5)(19),
			mult_vmat(1)(1)(21),
			mult_vmat(1)(4)(19));


		FA_0_19_3: FA PORT MAP (
			mult_vmat(0)(6)(19),
			mult_vmat(0)(7)(19),
			mult_vmat(0)(8)(19),
			mult_vmat(1)(2)(21),
			mult_vmat(1)(5)(19));


		-- COLUMN 21

		FA_0_20_1: FA PORT MAP (
			mult_vmat(0)(0)(20),
			mult_vmat(0)(1)(20),
			mult_vmat(0)(2)(20),
			mult_vmat(1)(0)(22),
			mult_vmat(1)(3)(20));


		FA_0_20_2: FA PORT MAP (
			mult_vmat(0)(3)(20),
			mult_vmat(0)(4)(20),
			mult_vmat(0)(5)(20),
			mult_vmat(1)(1)(22),
			mult_vmat(1)(4)(20));


		HA_0_20: HA PORT MAP (
			mult_vmat(0)(6)(20),
			mult_vmat(0)(7)(20),
			mult_vmat(1)(2)(21),
			mult_vmat(1)(5)(20));


		-- COLUMN 22

		FA_0_21_1: FA PORT MAP (
			mult_vmat(0)(0)(21),
			mult_vmat(0)(1)(21),
			mult_vmat(0)(2)(21),
			mult_vmat(1)(0)(23),
			mult_vmat(1)(3)(21));


		FA_0_21_2: FA PORT MAP (
			mult_vmat(0)(3)(21),
			mult_vmat(0)(4)(21),
			mult_vmat(0)(5)(21),
			mult_vmat(1)(1)(23),
			mult_vmat(1)(4)(21));

		mult_vmat(1)(5)(21) <= mult_vmat(0)(6)(21);

		-- COLUMN 23

		FA_0_22_1: FA PORT MAP (
			mult_vmat(0)(0)(22),
			mult_vmat(0)(1)(22),
			mult_vmat(0)(2)(22),
			mult_vmat(1)(0)(24),
			mult_vmat(1)(2)(22));


		HA_0_22: HA PORT MAP (
			mult_vmat(0)(3)(22),
			mult_vmat(0)(4)(22),
			mult_vmat(1)(1)(23),
			mult_vmat(1)(3)(22));

		mult_vmat(1)(4)(22) <= mult_vmat(0)(5)(22);
		mult_vmat(1)(5)(22) <= mult_vmat(0)(6)(22);

		-- COLUMN 24

		FA_0_23_1: FA PORT MAP (
			mult_vmat(0)(0)(23),
			mult_vmat(0)(1)(23),
			mult_vmat(0)(2)(23),
			mult_vmat(1)(0)(25),
			mult_vmat(1)(2)(23));

		mult_vmat(1)(3)(23) <= mult_vmat(0)(3)(23);
		mult_vmat(1)(4)(23) <= mult_vmat(0)(4)(23);
		mult_vmat(1)(5)(23) <= mult_vmat(0)(5)(23);

		-- COLUMN 25

		HA_0_24: HA PORT MAP (
			mult_vmat(0)(0)(24),
			mult_vmat(0)(1)(24),
			mult_vmat(1)(0)(25),
			mult_vmat(1)(1)(24));

		mult_vmat(1)(2)(24) <= mult_vmat(0)(2)(24);
		mult_vmat(1)(3)(24) <= mult_vmat(0)(3)(24);
		mult_vmat(1)(4)(24) <= mult_vmat(0)(4)(24);
		mult_vmat(1)(5)(24) <= mult_vmat(0)(5)(24);

		-- COLUMN 26
		mult_vmat(1)(1)(25) <= mult_vmat(0)(0)(25);
		mult_vmat(1)(2)(25) <= mult_vmat(0)(1)(25);
		mult_vmat(1)(3)(25) <= mult_vmat(0)(2)(25);
		mult_vmat(1)(4)(25) <= mult_vmat(0)(3)(25);
		mult_vmat(1)(5)(25) <= mult_vmat(0)(4)(25);

		-- COLUMN 27
		mult_vmat(1)(0)(26) <= mult_vmat(0)(0)(26);
		mult_vmat(1)(1)(26) <= mult_vmat(0)(1)(26);
		mult_vmat(1)(2)(26) <= mult_vmat(0)(2)(26);
		mult_vmat(1)(3)(26) <= mult_vmat(0)(3)(26);
		mult_vmat(1)(4)(26) <= mult_vmat(0)(4)(26);

		-- COLUMN 28
		mult_vmat(1)(0)(27) <= mult_vmat(0)(0)(27);
		mult_vmat(1)(1)(27) <= mult_vmat(0)(1)(27);
		mult_vmat(1)(2)(27) <= mult_vmat(0)(2)(27);
		mult_vmat(1)(3)(27) <= mult_vmat(0)(3)(27);

		-- COLUMN 29
		mult_vmat(1)(0)(28) <= mult_vmat(0)(0)(28);
		mult_vmat(1)(1)(28) <= mult_vmat(0)(1)(28);
		mult_vmat(1)(2)(28) <= mult_vmat(0)(2)(28);
		mult_vmat(1)(3)(28) <= mult_vmat(0)(3)(28);

		-- COLUMN 30
		mult_vmat(1)(0)(29) <= mult_vmat(0)(0)(29);
		mult_vmat(1)(1)(29) <= mult_vmat(0)(1)(29);
		mult_vmat(1)(2)(29) <= mult_vmat(0)(2)(29);

		-- COLUMN 31
		mult_vmat(1)(0)(30) <= mult_vmat(0)(0)(30);
		mult_vmat(1)(1)(30) <= mult_vmat(0)(1)(30);
		mult_vmat(1)(2)(30) <= mult_vmat(0)(2)(30);

		-- COLUMN 32
		mult_vmat(1)(0)(31) <= mult_vmat(0)(0)(31);
		mult_vmat(1)(1)(31) <= mult_vmat(0)(1)(31);


	------------------------------------------
	-- LEVEL 2
	------------------------------------------


		-- COLUMN 1
		mult_vmat(2)(0)(0) <= mult_vmat(1)(0)(0);
		mult_vmat(2)(1)(0) <= mult_vmat(1)(1)(0);

		-- COLUMN 2
		mult_vmat(2)(0)(1) <= mult_vmat(1)(0)(1);

		-- COLUMN 3
		mult_vmat(2)(0)(2) <= mult_vmat(1)(0)(2);
		mult_vmat(2)(1)(2) <= mult_vmat(1)(1)(2);
		mult_vmat(2)(2)(2) <= mult_vmat(1)(2)(2);

		-- COLUMN 4
		mult_vmat(2)(0)(3) <= mult_vmat(1)(0)(3);
		mult_vmat(2)(1)(3) <= mult_vmat(1)(1)(3);

		-- COLUMN 5
		mult_vmat(2)(0)(4) <= mult_vmat(1)(0)(4);
		mult_vmat(2)(1)(4) <= mult_vmat(1)(1)(4);
		mult_vmat(2)(2)(4) <= mult_vmat(1)(2)(4);
		mult_vmat(2)(3)(4) <= mult_vmat(1)(3)(4);

		-- COLUMN 6
		mult_vmat(2)(0)(5) <= mult_vmat(1)(0)(5);
		mult_vmat(2)(1)(5) <= mult_vmat(1)(1)(5);
		mult_vmat(2)(2)(5) <= mult_vmat(1)(2)(5);

		-- COLUMN 7

		HA_1_6: HA PORT MAP (
			mult_vmat(1)(0)(6),
			mult_vmat(1)(1)(6),
			mult_vmat(2)(0)(7),
			mult_vmat(2)(0)(6));

		mult_vmat(2)(1)(6) <= mult_vmat(1)(2)(6);
		mult_vmat(2)(2)(6) <= mult_vmat(1)(3)(6);
		mult_vmat(2)(3)(6) <= mult_vmat(1)(4)(6);

		-- COLUMN 8

		HA_1_7: HA PORT MAP (
			mult_vmat(1)(0)(7),
			mult_vmat(1)(1)(7),
			mult_vmat(2)(0)(8),
			mult_vmat(2)(1)(7));

		mult_vmat(2)(2)(7) <= mult_vmat(1)(2)(7);
		mult_vmat(2)(3)(7) <= mult_vmat(1)(3)(7);

		-- COLUMN 9

		FA_1_8_1: FA PORT MAP (
			mult_vmat(1)(0)(8),
			mult_vmat(1)(1)(8),
			mult_vmat(1)(2)(8),
			mult_vmat(2)(0)(10),
			mult_vmat(2)(1)(8));


		HA_1_8: HA PORT MAP (
			mult_vmat(1)(3)(8),
			mult_vmat(1)(4)(8),
			mult_vmat(2)(1)(9),
			mult_vmat(2)(2)(8));

		mult_vmat(2)(3)(8) <= mult_vmat(1)(5)(8);

		-- COLUMN 10

		FA_1_9_1: FA PORT MAP (
			mult_vmat(1)(0)(9),
			mult_vmat(1)(1)(9),
			mult_vmat(1)(2)(9),
			mult_vmat(2)(0)(11),
			mult_vmat(2)(2)(9));


		HA_1_9: HA PORT MAP (
			mult_vmat(1)(3)(9),
			mult_vmat(1)(4)(9),
			mult_vmat(2)(1)(10),
			mult_vmat(2)(3)(9));


		-- COLUMN 11

		FA_1_10_1: FA PORT MAP (
			mult_vmat(1)(0)(10),
			mult_vmat(1)(1)(10),
			mult_vmat(1)(2)(10),
			mult_vmat(2)(0)(12),
			mult_vmat(2)(2)(10));


		FA_1_10_2: FA PORT MAP (
			mult_vmat(1)(3)(10),
			mult_vmat(1)(4)(10),
			mult_vmat(1)(5)(10),
			mult_vmat(2)(1)(12),
			mult_vmat(2)(3)(10));


		-- COLUMN 12

		FA_1_11_1: FA PORT MAP (
			mult_vmat(1)(0)(11),
			mult_vmat(1)(1)(11),
			mult_vmat(1)(2)(11),
			mult_vmat(2)(0)(13),
			mult_vmat(2)(2)(11));


		FA_1_11_2: FA PORT MAP (
			mult_vmat(1)(3)(11),
			mult_vmat(1)(4)(11),
			mult_vmat(1)(5)(11),
			mult_vmat(2)(1)(13),
			mult_vmat(2)(3)(11));


		-- COLUMN 13

		FA_1_12_1: FA PORT MAP (
			mult_vmat(1)(0)(12),
			mult_vmat(1)(1)(12),
			mult_vmat(1)(2)(12),
			mult_vmat(2)(0)(14),
			mult_vmat(2)(2)(12));


		FA_1_12_2: FA PORT MAP (
			mult_vmat(1)(3)(12),
			mult_vmat(1)(4)(12),
			mult_vmat(1)(5)(12),
			mult_vmat(2)(1)(14),
			mult_vmat(2)(3)(12));


		-- COLUMN 14

		FA_1_13_1: FA PORT MAP (
			mult_vmat(1)(0)(13),
			mult_vmat(1)(1)(13),
			mult_vmat(1)(2)(13),
			mult_vmat(2)(0)(15),
			mult_vmat(2)(2)(13));


		FA_1_13_2: FA PORT MAP (
			mult_vmat(1)(3)(13),
			mult_vmat(1)(4)(13),
			mult_vmat(1)(5)(13),
			mult_vmat(2)(1)(15),
			mult_vmat(2)(3)(13));


		-- COLUMN 15

		FA_1_14_1: FA PORT MAP (
			mult_vmat(1)(0)(14),
			mult_vmat(1)(1)(14),
			mult_vmat(1)(2)(14),
			mult_vmat(2)(0)(16),
			mult_vmat(2)(2)(14));


		FA_1_14_2: FA PORT MAP (
			mult_vmat(1)(3)(14),
			mult_vmat(1)(4)(14),
			mult_vmat(1)(5)(14),
			mult_vmat(2)(1)(16),
			mult_vmat(2)(3)(14));


		-- COLUMN 16

		FA_1_15_1: FA PORT MAP (
			mult_vmat(1)(0)(15),
			mult_vmat(1)(1)(15),
			mult_vmat(1)(2)(15),
			mult_vmat(2)(0)(17),
			mult_vmat(2)(2)(15));


		FA_1_15_2: FA PORT MAP (
			mult_vmat(1)(3)(15),
			mult_vmat(1)(4)(15),
			mult_vmat(1)(5)(15),
			mult_vmat(2)(1)(17),
			mult_vmat(2)(3)(15));


		-- COLUMN 17

		FA_1_16_1: FA PORT MAP (
			mult_vmat(1)(0)(16),
			mult_vmat(1)(1)(16),
			mult_vmat(1)(2)(16),
			mult_vmat(2)(0)(18),
			mult_vmat(2)(2)(16));


		FA_1_16_2: FA PORT MAP (
			mult_vmat(1)(3)(16),
			mult_vmat(1)(4)(16),
			mult_vmat(1)(5)(16),
			mult_vmat(2)(1)(18),
			mult_vmat(2)(3)(16));


		-- COLUMN 18

		FA_1_17_1: FA PORT MAP (
			mult_vmat(1)(0)(17),
			mult_vmat(1)(1)(17),
			mult_vmat(1)(2)(17),
			mult_vmat(2)(0)(19),
			mult_vmat(2)(2)(17));


		FA_1_17_2: FA PORT MAP (
			mult_vmat(1)(3)(17),
			mult_vmat(1)(4)(17),
			mult_vmat(1)(5)(17),
			mult_vmat(2)(1)(19),
			mult_vmat(2)(3)(17));


		-- COLUMN 19

		FA_1_18_1: FA PORT MAP (
			mult_vmat(1)(0)(18),
			mult_vmat(1)(1)(18),
			mult_vmat(1)(2)(18),
			mult_vmat(2)(0)(20),
			mult_vmat(2)(2)(18));


		FA_1_18_2: FA PORT MAP (
			mult_vmat(1)(3)(18),
			mult_vmat(1)(4)(18),
			mult_vmat(1)(5)(18),
			mult_vmat(2)(1)(20),
			mult_vmat(2)(3)(18));


		-- COLUMN 20

		FA_1_19_1: FA PORT MAP (
			mult_vmat(1)(0)(19),
			mult_vmat(1)(1)(19),
			mult_vmat(1)(2)(19),
			mult_vmat(2)(0)(21),
			mult_vmat(2)(2)(19));


		FA_1_19_2: FA PORT MAP (
			mult_vmat(1)(3)(19),
			mult_vmat(1)(4)(19),
			mult_vmat(1)(5)(19),
			mult_vmat(2)(1)(21),
			mult_vmat(2)(3)(19));


		-- COLUMN 21

		FA_1_20_1: FA PORT MAP (
			mult_vmat(1)(0)(20),
			mult_vmat(1)(1)(20),
			mult_vmat(1)(2)(20),
			mult_vmat(2)(0)(22),
			mult_vmat(2)(2)(20));


		FA_1_20_2: FA PORT MAP (
			mult_vmat(1)(3)(20),
			mult_vmat(1)(4)(20),
			mult_vmat(1)(5)(20),
			mult_vmat(2)(1)(22),
			mult_vmat(2)(3)(20));


		-- COLUMN 22

		FA_1_21_1: FA PORT MAP (
			mult_vmat(1)(0)(21),
			mult_vmat(1)(1)(21),
			mult_vmat(1)(2)(21),
			mult_vmat(2)(0)(23),
			mult_vmat(2)(2)(21));


		FA_1_21_2: FA PORT MAP (
			mult_vmat(1)(3)(21),
			mult_vmat(1)(4)(21),
			mult_vmat(1)(5)(21),
			mult_vmat(2)(1)(23),
			mult_vmat(2)(3)(21));


		-- COLUMN 23

		FA_1_22_1: FA PORT MAP (
			mult_vmat(1)(0)(22),
			mult_vmat(1)(1)(22),
			mult_vmat(1)(2)(22),
			mult_vmat(2)(0)(24),
			mult_vmat(2)(2)(22));


		FA_1_22_2: FA PORT MAP (
			mult_vmat(1)(3)(22),
			mult_vmat(1)(4)(22),
			mult_vmat(1)(5)(22),
			mult_vmat(2)(1)(24),
			mult_vmat(2)(3)(22));


		-- COLUMN 24

		FA_1_23_1: FA PORT MAP (
			mult_vmat(1)(0)(23),
			mult_vmat(1)(1)(23),
			mult_vmat(1)(2)(23),
			mult_vmat(2)(0)(25),
			mult_vmat(2)(2)(23));


		FA_1_23_2: FA PORT MAP (
			mult_vmat(1)(3)(23),
			mult_vmat(1)(4)(23),
			mult_vmat(1)(5)(23),
			mult_vmat(2)(1)(25),
			mult_vmat(2)(3)(23));


		-- COLUMN 25

		FA_1_24_1: FA PORT MAP (
			mult_vmat(1)(0)(24),
			mult_vmat(1)(1)(24),
			mult_vmat(1)(2)(24),
			mult_vmat(2)(0)(26),
			mult_vmat(2)(2)(24));


		FA_1_24_2: FA PORT MAP (
			mult_vmat(1)(3)(24),
			mult_vmat(1)(4)(24),
			mult_vmat(1)(5)(24),
			mult_vmat(2)(1)(26),
			mult_vmat(2)(3)(24));


		-- COLUMN 26

		FA_1_25_1: FA PORT MAP (
			mult_vmat(1)(0)(25),
			mult_vmat(1)(1)(25),
			mult_vmat(1)(2)(25),
			mult_vmat(2)(0)(27),
			mult_vmat(2)(2)(25));


		FA_1_25_2: FA PORT MAP (
			mult_vmat(1)(3)(25),
			mult_vmat(1)(4)(25),
			mult_vmat(1)(5)(25),
			mult_vmat(2)(1)(27),
			mult_vmat(2)(3)(25));


		-- COLUMN 27

		FA_1_26_1: FA PORT MAP (
			mult_vmat(1)(0)(26),
			mult_vmat(1)(1)(26),
			mult_vmat(1)(2)(26),
			mult_vmat(2)(0)(28),
			mult_vmat(2)(2)(26));


		HA_1_26: HA PORT MAP (
			mult_vmat(1)(3)(26),
			mult_vmat(1)(4)(26),
			mult_vmat(2)(1)(27),
			mult_vmat(2)(3)(26));


		-- COLUMN 28

		FA_1_27_1: FA PORT MAP (
			mult_vmat(1)(0)(27),
			mult_vmat(1)(1)(27),
			mult_vmat(1)(2)(27),
			mult_vmat(2)(0)(29),
			mult_vmat(2)(2)(27));

		mult_vmat(2)(3)(27) <= mult_vmat(1)(3)(27);

		-- COLUMN 29

		HA_1_28: HA PORT MAP (
			mult_vmat(1)(0)(28),
			mult_vmat(1)(1)(28),
			mult_vmat(2)(0)(29),
			mult_vmat(2)(1)(28));

		mult_vmat(2)(2)(28) <= mult_vmat(1)(2)(28);
		mult_vmat(2)(3)(28) <= mult_vmat(1)(3)(28);

		-- COLUMN 30
		mult_vmat(2)(1)(29) <= mult_vmat(1)(0)(29);
		mult_vmat(2)(2)(29) <= mult_vmat(1)(1)(29);
		mult_vmat(2)(3)(29) <= mult_vmat(1)(2)(29);

		-- COLUMN 31
		mult_vmat(2)(0)(30) <= mult_vmat(1)(0)(30);
		mult_vmat(2)(1)(30) <= mult_vmat(1)(1)(30);
		mult_vmat(2)(2)(30) <= mult_vmat(1)(2)(30);

		-- COLUMN 32
		mult_vmat(2)(0)(31) <= mult_vmat(1)(0)(31);
		mult_vmat(2)(1)(31) <= mult_vmat(1)(1)(31);


	------------------------------------------
	-- LEVEL 3
	------------------------------------------


		-- COLUMN 1
		mult_vmat(3)(0)(0) <= mult_vmat(2)(0)(0);
		mult_vmat(3)(1)(0) <= mult_vmat(2)(1)(0);

		-- COLUMN 2
		mult_vmat(3)(0)(1) <= mult_vmat(2)(0)(1);

		-- COLUMN 3
		mult_vmat(3)(0)(2) <= mult_vmat(2)(0)(2);
		mult_vmat(3)(1)(2) <= mult_vmat(2)(1)(2);
		mult_vmat(3)(2)(2) <= mult_vmat(2)(2)(2);

		-- COLUMN 4
		mult_vmat(3)(0)(3) <= mult_vmat(2)(0)(3);
		mult_vmat(3)(1)(3) <= mult_vmat(2)(1)(3);

		-- COLUMN 5

		HA_2_4: HA PORT MAP (
			mult_vmat(2)(0)(4),
			mult_vmat(2)(1)(4),
			mult_vmat(3)(0)(5),
			mult_vmat(3)(0)(4));

		mult_vmat(3)(1)(4) <= mult_vmat(2)(2)(4);
		mult_vmat(3)(2)(4) <= mult_vmat(2)(3)(4);

		-- COLUMN 6

		HA_2_5: HA PORT MAP (
			mult_vmat(2)(0)(5),
			mult_vmat(2)(1)(5),
			mult_vmat(3)(0)(6),
			mult_vmat(3)(1)(5));

		mult_vmat(3)(2)(5) <= mult_vmat(2)(2)(5);

		-- COLUMN 7

		FA_2_6_1: FA PORT MAP (
			mult_vmat(2)(0)(6),
			mult_vmat(2)(1)(6),
			mult_vmat(2)(2)(6),
			mult_vmat(3)(0)(8),
			mult_vmat(3)(1)(6));

		mult_vmat(3)(2)(6) <= mult_vmat(2)(3)(6);

		-- COLUMN 8

		FA_2_7_1: FA PORT MAP (
			mult_vmat(2)(0)(7),
			mult_vmat(2)(1)(7),
			mult_vmat(2)(2)(7),
			mult_vmat(3)(0)(9),
			mult_vmat(3)(1)(7));

		mult_vmat(3)(2)(7) <= mult_vmat(2)(3)(7);

		-- COLUMN 9

		FA_2_8_1: FA PORT MAP (
			mult_vmat(2)(0)(8),
			mult_vmat(2)(1)(8),
			mult_vmat(2)(2)(8),
			mult_vmat(3)(0)(10),
			mult_vmat(3)(1)(8));

		mult_vmat(3)(2)(8) <= mult_vmat(2)(3)(8);

		-- COLUMN 10

		FA_2_9_1: FA PORT MAP (
			mult_vmat(2)(0)(9),
			mult_vmat(2)(1)(9),
			mult_vmat(2)(2)(9),
			mult_vmat(3)(0)(11),
			mult_vmat(3)(1)(9));

		mult_vmat(3)(2)(9) <= mult_vmat(2)(3)(9);

		-- COLUMN 11

		FA_2_10_1: FA PORT MAP (
			mult_vmat(2)(0)(10),
			mult_vmat(2)(1)(10),
			mult_vmat(2)(2)(10),
			mult_vmat(3)(0)(12),
			mult_vmat(3)(1)(10));

		mult_vmat(3)(2)(10) <= mult_vmat(2)(3)(10);

		-- COLUMN 12

		FA_2_11_1: FA PORT MAP (
			mult_vmat(2)(0)(11),
			mult_vmat(2)(1)(11),
			mult_vmat(2)(2)(11),
			mult_vmat(3)(0)(13),
			mult_vmat(3)(1)(11));

		mult_vmat(3)(2)(11) <= mult_vmat(2)(3)(11);

		-- COLUMN 13

		FA_2_12_1: FA PORT MAP (
			mult_vmat(2)(0)(12),
			mult_vmat(2)(1)(12),
			mult_vmat(2)(2)(12),
			mult_vmat(3)(0)(14),
			mult_vmat(3)(1)(12));

		mult_vmat(3)(2)(12) <= mult_vmat(2)(3)(12);

		-- COLUMN 14

		FA_2_13_1: FA PORT MAP (
			mult_vmat(2)(0)(13),
			mult_vmat(2)(1)(13),
			mult_vmat(2)(2)(13),
			mult_vmat(3)(0)(15),
			mult_vmat(3)(1)(13));

		mult_vmat(3)(2)(13) <= mult_vmat(2)(3)(13);

		-- COLUMN 15

		FA_2_14_1: FA PORT MAP (
			mult_vmat(2)(0)(14),
			mult_vmat(2)(1)(14),
			mult_vmat(2)(2)(14),
			mult_vmat(3)(0)(16),
			mult_vmat(3)(1)(14));

		mult_vmat(3)(2)(14) <= mult_vmat(2)(3)(14);

		-- COLUMN 16

		FA_2_15_1: FA PORT MAP (
			mult_vmat(2)(0)(15),
			mult_vmat(2)(1)(15),
			mult_vmat(2)(2)(15),
			mult_vmat(3)(0)(17),
			mult_vmat(3)(1)(15));

		mult_vmat(3)(2)(15) <= mult_vmat(2)(3)(15);

		-- COLUMN 17

		FA_2_16_1: FA PORT MAP (
			mult_vmat(2)(0)(16),
			mult_vmat(2)(1)(16),
			mult_vmat(2)(2)(16),
			mult_vmat(3)(0)(18),
			mult_vmat(3)(1)(16));

		mult_vmat(3)(2)(16) <= mult_vmat(2)(3)(16);

		-- COLUMN 18

		FA_2_17_1: FA PORT MAP (
			mult_vmat(2)(0)(17),
			mult_vmat(2)(1)(17),
			mult_vmat(2)(2)(17),
			mult_vmat(3)(0)(19),
			mult_vmat(3)(1)(17));

		mult_vmat(3)(2)(17) <= mult_vmat(2)(3)(17);

		-- COLUMN 19

		FA_2_18_1: FA PORT MAP (
			mult_vmat(2)(0)(18),
			mult_vmat(2)(1)(18),
			mult_vmat(2)(2)(18),
			mult_vmat(3)(0)(20),
			mult_vmat(3)(1)(18));

		mult_vmat(3)(2)(18) <= mult_vmat(2)(3)(18);

		-- COLUMN 20

		FA_2_19_1: FA PORT MAP (
			mult_vmat(2)(0)(19),
			mult_vmat(2)(1)(19),
			mult_vmat(2)(2)(19),
			mult_vmat(3)(0)(21),
			mult_vmat(3)(1)(19));

		mult_vmat(3)(2)(19) <= mult_vmat(2)(3)(19);

		-- COLUMN 21

		FA_2_20_1: FA PORT MAP (
			mult_vmat(2)(0)(20),
			mult_vmat(2)(1)(20),
			mult_vmat(2)(2)(20),
			mult_vmat(3)(0)(22),
			mult_vmat(3)(1)(20));

		mult_vmat(3)(2)(20) <= mult_vmat(2)(3)(20);

		-- COLUMN 22

		FA_2_21_1: FA PORT MAP (
			mult_vmat(2)(0)(21),
			mult_vmat(2)(1)(21),
			mult_vmat(2)(2)(21),
			mult_vmat(3)(0)(23),
			mult_vmat(3)(1)(21));

		mult_vmat(3)(2)(21) <= mult_vmat(2)(3)(21);

		-- COLUMN 23

		FA_2_22_1: FA PORT MAP (
			mult_vmat(2)(0)(22),
			mult_vmat(2)(1)(22),
			mult_vmat(2)(2)(22),
			mult_vmat(3)(0)(24),
			mult_vmat(3)(1)(22));

		mult_vmat(3)(2)(22) <= mult_vmat(2)(3)(22);

		-- COLUMN 24

		FA_2_23_1: FA PORT MAP (
			mult_vmat(2)(0)(23),
			mult_vmat(2)(1)(23),
			mult_vmat(2)(2)(23),
			mult_vmat(3)(0)(25),
			mult_vmat(3)(1)(23));

		mult_vmat(3)(2)(23) <= mult_vmat(2)(3)(23);

		-- COLUMN 25

		FA_2_24_1: FA PORT MAP (
			mult_vmat(2)(0)(24),
			mult_vmat(2)(1)(24),
			mult_vmat(2)(2)(24),
			mult_vmat(3)(0)(26),
			mult_vmat(3)(1)(24));

		mult_vmat(3)(2)(24) <= mult_vmat(2)(3)(24);

		-- COLUMN 26

		FA_2_25_1: FA PORT MAP (
			mult_vmat(2)(0)(25),
			mult_vmat(2)(1)(25),
			mult_vmat(2)(2)(25),
			mult_vmat(3)(0)(27),
			mult_vmat(3)(1)(25));

		mult_vmat(3)(2)(25) <= mult_vmat(2)(3)(25);

		-- COLUMN 27

		FA_2_26_1: FA PORT MAP (
			mult_vmat(2)(0)(26),
			mult_vmat(2)(1)(26),
			mult_vmat(2)(2)(26),
			mult_vmat(3)(0)(28),
			mult_vmat(3)(1)(26));

		mult_vmat(3)(2)(26) <= mult_vmat(2)(3)(26);

		-- COLUMN 28

		FA_2_27_1: FA PORT MAP (
			mult_vmat(2)(0)(27),
			mult_vmat(2)(1)(27),
			mult_vmat(2)(2)(27),
			mult_vmat(3)(0)(29),
			mult_vmat(3)(1)(27));

		mult_vmat(3)(2)(27) <= mult_vmat(2)(3)(27);

		-- COLUMN 29

		FA_2_28_1: FA PORT MAP (
			mult_vmat(2)(0)(28),
			mult_vmat(2)(1)(28),
			mult_vmat(2)(2)(28),
			mult_vmat(3)(0)(30),
			mult_vmat(3)(1)(28));

		mult_vmat(3)(2)(28) <= mult_vmat(2)(3)(28);

		-- COLUMN 30

		FA_2_29_1: FA PORT MAP (
			mult_vmat(2)(0)(29),
			mult_vmat(2)(1)(29),
			mult_vmat(2)(2)(29),
			mult_vmat(3)(0)(31),
			mult_vmat(3)(1)(29));

		mult_vmat(3)(2)(29) <= mult_vmat(2)(3)(29);

		-- COLUMN 31

		HA_2_30: HA PORT MAP (
			mult_vmat(2)(0)(30),
			mult_vmat(2)(1)(30),
			mult_vmat(3)(0)(31),
			mult_vmat(3)(1)(30));

		mult_vmat(3)(2)(30) <= mult_vmat(2)(2)(30);

		-- COLUMN 32
		mult_vmat(3)(1)(31) <= mult_vmat(2)(0)(31);
		mult_vmat(3)(2)(31) <= mult_vmat(2)(1)(31);


	------------------------------------------
	-- LEVEL 4
	------------------------------------------


		-- COLUMN 1
		mult_vmat(4)(0)(0) <= mult_vmat(3)(0)(0);
		mult_vmat(4)(1)(0) <= mult_vmat(3)(1)(0);

		-- COLUMN 2
		mult_vmat(4)(0)(1) <= mult_vmat(3)(0)(1);

		-- COLUMN 3

		HA_3_2: HA PORT MAP (
			mult_vmat(3)(0)(2),
			mult_vmat(3)(1)(2),
			mult_vmat(4)(0)(3),
			mult_vmat(4)(0)(2));

		mult_vmat(4)(1)(2) <= mult_vmat(3)(2)(2);

		-- COLUMN 4

		HA_3_3: HA PORT MAP (
			mult_vmat(3)(0)(3),
			mult_vmat(3)(1)(3),
			mult_vmat(4)(0)(4),
			mult_vmat(4)(1)(3));


		-- COLUMN 5

		FA_3_4_1: FA PORT MAP (
			mult_vmat(3)(0)(4),
			mult_vmat(3)(1)(4),
			mult_vmat(3)(2)(4),
			mult_vmat(4)(0)(6),
			mult_vmat(4)(1)(4));


		-- COLUMN 6

		FA_3_5_1: FA PORT MAP (
			mult_vmat(3)(0)(5),
			mult_vmat(3)(1)(5),
			mult_vmat(3)(2)(5),
			mult_vmat(4)(0)(7),
			mult_vmat(4)(1)(5));


		-- COLUMN 7

		FA_3_6_1: FA PORT MAP (
			mult_vmat(3)(0)(6),
			mult_vmat(3)(1)(6),
			mult_vmat(3)(2)(6),
			mult_vmat(4)(0)(8),
			mult_vmat(4)(1)(6));


		-- COLUMN 8

		FA_3_7_1: FA PORT MAP (
			mult_vmat(3)(0)(7),
			mult_vmat(3)(1)(7),
			mult_vmat(3)(2)(7),
			mult_vmat(4)(0)(9),
			mult_vmat(4)(1)(7));


		-- COLUMN 9

		FA_3_8_1: FA PORT MAP (
			mult_vmat(3)(0)(8),
			mult_vmat(3)(1)(8),
			mult_vmat(3)(2)(8),
			mult_vmat(4)(0)(10),
			mult_vmat(4)(1)(8));


		-- COLUMN 10

		FA_3_9_1: FA PORT MAP (
			mult_vmat(3)(0)(9),
			mult_vmat(3)(1)(9),
			mult_vmat(3)(2)(9),
			mult_vmat(4)(0)(11),
			mult_vmat(4)(1)(9));


		-- COLUMN 11

		FA_3_10_1: FA PORT MAP (
			mult_vmat(3)(0)(10),
			mult_vmat(3)(1)(10),
			mult_vmat(3)(2)(10),
			mult_vmat(4)(0)(12),
			mult_vmat(4)(1)(10));


		-- COLUMN 12

		FA_3_11_1: FA PORT MAP (
			mult_vmat(3)(0)(11),
			mult_vmat(3)(1)(11),
			mult_vmat(3)(2)(11),
			mult_vmat(4)(0)(13),
			mult_vmat(4)(1)(11));


		-- COLUMN 13

		FA_3_12_1: FA PORT MAP (
			mult_vmat(3)(0)(12),
			mult_vmat(3)(1)(12),
			mult_vmat(3)(2)(12),
			mult_vmat(4)(0)(14),
			mult_vmat(4)(1)(12));


		-- COLUMN 14

		FA_3_13_1: FA PORT MAP (
			mult_vmat(3)(0)(13),
			mult_vmat(3)(1)(13),
			mult_vmat(3)(2)(13),
			mult_vmat(4)(0)(15),
			mult_vmat(4)(1)(13));


		-- COLUMN 15

		FA_3_14_1: FA PORT MAP (
			mult_vmat(3)(0)(14),
			mult_vmat(3)(1)(14),
			mult_vmat(3)(2)(14),
			mult_vmat(4)(0)(16),
			mult_vmat(4)(1)(14));


		-- COLUMN 16

		FA_3_15_1: FA PORT MAP (
			mult_vmat(3)(0)(15),
			mult_vmat(3)(1)(15),
			mult_vmat(3)(2)(15),
			mult_vmat(4)(0)(17),
			mult_vmat(4)(1)(15));


		-- COLUMN 17

		FA_3_16_1: FA PORT MAP (
			mult_vmat(3)(0)(16),
			mult_vmat(3)(1)(16),
			mult_vmat(3)(2)(16),
			mult_vmat(4)(0)(18),
			mult_vmat(4)(1)(16));


		-- COLUMN 18

		FA_3_17_1: FA PORT MAP (
			mult_vmat(3)(0)(17),
			mult_vmat(3)(1)(17),
			mult_vmat(3)(2)(17),
			mult_vmat(4)(0)(19),
			mult_vmat(4)(1)(17));


		-- COLUMN 19

		FA_3_18_1: FA PORT MAP (
			mult_vmat(3)(0)(18),
			mult_vmat(3)(1)(18),
			mult_vmat(3)(2)(18),
			mult_vmat(4)(0)(20),
			mult_vmat(4)(1)(18));


		-- COLUMN 20

		FA_3_19_1: FA PORT MAP (
			mult_vmat(3)(0)(19),
			mult_vmat(3)(1)(19),
			mult_vmat(3)(2)(19),
			mult_vmat(4)(0)(21),
			mult_vmat(4)(1)(19));


		-- COLUMN 21

		FA_3_20_1: FA PORT MAP (
			mult_vmat(3)(0)(20),
			mult_vmat(3)(1)(20),
			mult_vmat(3)(2)(20),
			mult_vmat(4)(0)(22),
			mult_vmat(4)(1)(20));


		-- COLUMN 22

		FA_3_21_1: FA PORT MAP (
			mult_vmat(3)(0)(21),
			mult_vmat(3)(1)(21),
			mult_vmat(3)(2)(21),
			mult_vmat(4)(0)(23),
			mult_vmat(4)(1)(21));


		-- COLUMN 23

		FA_3_22_1: FA PORT MAP (
			mult_vmat(3)(0)(22),
			mult_vmat(3)(1)(22),
			mult_vmat(3)(2)(22),
			mult_vmat(4)(0)(24),
			mult_vmat(4)(1)(22));


		-- COLUMN 24

		FA_3_23_1: FA PORT MAP (
			mult_vmat(3)(0)(23),
			mult_vmat(3)(1)(23),
			mult_vmat(3)(2)(23),
			mult_vmat(4)(0)(25),
			mult_vmat(4)(1)(23));


		-- COLUMN 25

		FA_3_24_1: FA PORT MAP (
			mult_vmat(3)(0)(24),
			mult_vmat(3)(1)(24),
			mult_vmat(3)(2)(24),
			mult_vmat(4)(0)(26),
			mult_vmat(4)(1)(24));


		-- COLUMN 26

		FA_3_25_1: FA PORT MAP (
			mult_vmat(3)(0)(25),
			mult_vmat(3)(1)(25),
			mult_vmat(3)(2)(25),
			mult_vmat(4)(0)(27),
			mult_vmat(4)(1)(25));


		-- COLUMN 27

		FA_3_26_1: FA PORT MAP (
			mult_vmat(3)(0)(26),
			mult_vmat(3)(1)(26),
			mult_vmat(3)(2)(26),
			mult_vmat(4)(0)(28),
			mult_vmat(4)(1)(26));


		-- COLUMN 28

		FA_3_27_1: FA PORT MAP (
			mult_vmat(3)(0)(27),
			mult_vmat(3)(1)(27),
			mult_vmat(3)(2)(27),
			mult_vmat(4)(0)(29),
			mult_vmat(4)(1)(27));


		-- COLUMN 29

		FA_3_28_1: FA PORT MAP (
			mult_vmat(3)(0)(28),
			mult_vmat(3)(1)(28),
			mult_vmat(3)(2)(28),
			mult_vmat(4)(0)(30),
			mult_vmat(4)(1)(28));


		-- COLUMN 30

		FA_3_29_1: FA PORT MAP (
			mult_vmat(3)(0)(29),
			mult_vmat(3)(1)(29),
			mult_vmat(3)(2)(29),
			mult_vmat(4)(0)(31),
			mult_vmat(4)(1)(29));


		-- COLUMN 31

		FA_3_30_1: FA PORT MAP (
			mult_vmat(3)(0)(30),
			mult_vmat(3)(1)(30),
			mult_vmat(3)(2)(30),
			mult_vmat(4)(0)(32),
			mult_vmat(4)(1)(30));


		-- COLUMN 32

		FA_3_31_1: FA PORT MAP (
			mult_vmat(3)(0)(31),
			mult_vmat(3)(1)(31),
			mult_vmat(3)(2)(31),
			mult_vmat(4)(0)(33),
			mult_vmat(4)(1)(31));




	------------------------------------------
	-- OUTPUTS
	------------------------------------------

		data_out1 <= mult_vmat(nl-1,0);
		data_out2 <= mult_vmat(nl-1,1);

END structure;
