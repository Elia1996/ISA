function [] = f_entity_vhdl(fp,fp_pkg,Nb,nl)



fprintf(fp_pkg,strcat('-- -- Fiore, Neri, Ribaldone, Zheng\n', ...
'--\n', ...
'-- keyword in MAIUSCOLO (es: STD_LOGIC)\n', ...
'-- dati in minuscolo (es: data_in)\n', ...
'-- segnali di controllo in MAIUSCOLO (es: EN)\n', ...
"-- componenti instanziati con l'iniziale maiuscola (es: Shift_register_1)\n", ...
'-- i segnali attivi bassi con _n finale (es: RST_n)\n', ...
'\n', ...
'LIBRARY ieee;\n', ...
'USE ieee.std_logic_1164.all;\n', ...
'USE ieee.numeric_std.all;\n', ...
'\n', ...
'PACKAGE MBE_pkg IS\n', ...
'\tCONSTANT column_pp   : NATURAL := %d;\n', ...
'\tCONSTANT row_pp      : NATURAL := %d;\n', ...
'\tCONSTANT Nb          : NATURAL := %d;\n', ...
'\tCONSTANT nl          : NATURAL := %d;\n', ...
'\tTYPE MATRIX_PP IS ARRAY(row_pp-1 DOWNTO 0) OF STD_LOGIC_VECTOR(column_pp-1 DOWNTO 0);\n', ...
'\tTYPE VECT_MATRIX IS ARRAY(0 TO nl-1, 0 TO row_pp-1) OF STD_LOGIC_VECTOR(2*Nb-1 DOWNTO 0);\n', ...
'\n', ...
'END PACKAGE;\n', ...
'\n'),Nb+4, Nb/2+1, Nb, nl);



fprintf(fp,strcat('-- -- Fiore, Neri, Ribaldone, Zheng\n', ...
'--\n', ...
'-- keyword in MAIUSCOLO (es: STD_LOGIC)\n', ...
'-- dati in minuscolo (es: data_in)\n', ...
'-- segnali di controllo in MAIUSCOLO (es: EN)\n', ...
"-- componenti instanziati con l'iniziale maiuscola (es: Shift_register_1)\n", ...
'-- i segnali attivi bassi con _n finale (es: RST_n)\n', ...
'\n', ...
'LIBRARY ieee;\n', ...
'USE ieee.std_logic_1164.all;\n', ...
'USE ieee.numeric_std.all;\n', ...
'USE work.all;\n', ...
'USE work.MBE_pkg.all;\n', ...
'\n', ...
'ENTITY MBE_dadda IS\n', ...
'PORT(\tpp_mat\t\t\t: IN MATRIX_PP;\n', ...
'\tsign_pp\t\t\t: IN STD_LOGIC_VECTOR(row_pp-2 DOWNTO 0);\n', ...
'\tdata_out1\t\t: OUT STD_LOGIC_VECTOR(2*Nb-1 DOWNTO 0);\n', ...
'\tdata_out2\t\t: OUT STD_LOGIC_VECTOR(2*Nb-1 DOWNTO 0));\n', ...
'END MBE_dadda;\n', ...
'\n', ...
'ARCHITECTURE structure OF MBE_dadda IS\n', ...
'\n', ...
'------ COMPONENTS -------\n', ...
'\n', ...
'COMPONENT FA IS \n', ...
'PORT(\ta,b,cin\t: IN STD_LOGIC;\n', ...
'\ts,cout\t: OUT STD_LOGIC);\n', ...
'END COMPONENT FA;\n', ...
'\n', ...
'COMPONENT HA IS \n', ...
'PORT(\ta,b\t: IN STD_LOGIC;\n', ...
'\ts,cout\t: OUT STD_LOGIC);\n', ...
'END COMPONENT HA;\n', ...
'\n', ...
'------ SIGNALS -------\n', ...
'\n', ...
"SIGNAL mult_vmat\t: VECT_MATRIX := (others => ( others => (others => '0')));\n", ...
'\n', ...
'\n', ...
'BEGIN\n'));

end
