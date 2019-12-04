LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY FA IS

  PORT (
         a,b,cin: IN STD_LOGIC;
         s,cout: OUT STD_LOGIC
  );
           
END FA; 

ARCHITECTURE Structure OF FA IS

BEGIN
	s <= a xor b xor cin;
	cout <= (a and b) or (a and cin) or (b and cin);
END Structure;
