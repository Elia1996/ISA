clear
close all
clc


% COMMENTO 

%Variabili globali
Nb=16;

% Inizializzazione variabili utili

%Mult_VMAT



% Funzioni
[C_V] = f_C_V(Nb);

[L_V,nl] = f_L_V(Nb);
PP_MAT=ones(L_V(nl),Nb+4);
PP_MAT(2:end,1)=-5;
PP_MAT(end-1,2)=-5;
PP_MAT(end,2:3)=-5;
sign_pp=-ones(1,L_V(nl)-1)

%% file di uscita
fp=fopen("../../4_Design_and_Sim/src/multiplier/MBE_port_map.vhd",'w');
fp_pkg=fopen("../../4_Design_and_Sim/src/multiplier/MBE_pkg.vhd",'w');
f_entity_vhdl(fp,fp_pkg,Nb,nl);

%%

[Mult_VMAT] =f_Mult_VMAT(L_V, PP_MAT, nl, Nb, sign_pp,fp);

[Mult_VMAT] =f_DADDA(Mult_VMAT,C_V,L_V,nl, Nb,fp);

Mult_VMAT = flip(Mult_VMAT,2);

fprintf(fp,"\n");
fprintf(fp,'\n\n\t------------------------------------------\n');
fprintf(fp,'\t-- OUTPUTS\n');
fprintf(fp,'\t------------------------------------------\n\n');
fprintf(fp,"\t\tdata_out1 <= mult_vmat(nl-1,0);\n");
fprintf(fp,"\t\tdata_out2 <= mult_vmat(nl-1,1);\n");
fprintf(fp,"\n");
fprintf(fp,"END structure;");


fclose('all');

