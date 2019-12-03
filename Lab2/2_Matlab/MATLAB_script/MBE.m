clear
close all
clc


% COMMENTO 

%Variabili globali
Nb=16;

% Inizializzazione variabili utili

%Mult_VMAT

% file di uscita
fp=fopen("MBE_port_map.vhd",'w');

% Funzioni
[C_V] = f_C_V(Nb);

[L_V,nl] = f_L_V(Nb);
PP_MAT=ones(L_V(nl),Nb+4);
PP_MAT(2:end,1)=-5;
PP_MAT(end-1,2)=-5;
PP_MAT(end,2:3)=-5;
sign_pp=-ones(1,L_V(nl)-1)

[Mult_VMAT] =f_Mult_VMAT(L_V, PP_MAT, nl, Nb, sign_pp);

[Mult_VMAT] =f_DADDA(Mult_VMAT,C_V,L_V,nl, Nb,fp);

Mult_VMAT = flip(Mult_VMAT,2);
