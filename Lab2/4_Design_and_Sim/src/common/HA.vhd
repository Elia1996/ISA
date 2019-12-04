LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY HA IS

  PORT (
         a,b: IN STD_LOGIC;
         s,cout: OUT STD_LOGIC
  );
           
END HA; 

ARCHITECTURE Structure OF HA IS

BEGIN
	s <= a xor b;
	cout <= (a and b);
END Structure;
