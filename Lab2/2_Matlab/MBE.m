clear
close all
clc

addpath('./box_drowing/');

% COMMENTO 

%Variabili globali
Nb=24;

% Inizializzazione variabili utili

%Mult_VMAT
%debug

debug=0;
% Funzioni
[C_V] = f_C_V(Nb);

[L_V,nl] = f_L_V(Nb);
PP_MAT=ones(Nb/2+1,Nb+4);
for i=1:length(PP_MAT(:,1))
   PP_MAT(i,:) = (i+1).*PP_MAT(i,:); 
end
PP_MAT(2:end,1)=0;
PP_MAT(end-1,2)=0;
PP_MAT(end,2:3)=0;
sign_pp=1*ones(1,Nb/2+1-1)

%% file di uscita
fp=fopen("../4_Design_and_Sim/src/multiplier/MBE_dadda.vhd",'w');
fp_pkg=fopen("../4_Design_and_Sim/src/common/MBE_pkg.vhd",'w');
f_entity_vhdl(fp,fp_pkg,Nb,nl);

%%

[Mult_VMAT] =f_Mult_VMAT(L_V, PP_MAT, nl, Nb, sign_pp,fp);
Str_Mult_VMAT = v_mat_to_strvmat(flip(Mult_VMAT,2));

[Mult_VMAT, Str_Mult_VMAT] =f_DADDA(Mult_VMAT, Str_Mult_VMAT, C_V, L_V, nl, Nb, fp, debug);

Mult_VMAT=flip(Mult_VMAT,2);
n_l=length(Mult_VMAT(1,1,:));
n_r=length(Mult_VMAT(:,1,1));
n_c=length(Mult_VMAT(1,:,1));

Str_Mult_VMAT'
% ciclo per sistemare Str_Mult_VMAT
for l= 1:n_l    % ciclo si livelli
    for r= 1:n_r   % ciclo sulle righe
        str_r= (l-1)*(2*n_r+1) + r*2;  % r for string vector of mat
        line=split(Str_Mult_VMAT(str_r),"");
        to_line="";
        for c= 1:n_c % ciclo sulle colonne
            str_c1 = 2*c; % c for space between column
            str_c2 = 2*c+1; % c for string vector of mat, più uno per il primo "" non usato
            to_line= to_line + line(str_c1) + num2str(char(Mult_VMAT(r,c,l)+48));
        end
        to_line= to_line + line(end-1);
        Str_Mult_VMAT(str_r) = to_line;
    end
end

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

%%  stampa della matrice completa su file
fp_mat=fopen("../4_Design_and_Sim/sim_out/final_matrix_m.txt",'w');

for i=1:length(Str_Mult_VMAT(1,:))
    fprintf(fp_mat,"%s\n", Str_Mult_VMAT(i));
end
% delete 0's
system('../4_Design_and_Sim/sim_out/delete_zeros.sh final_matrix_m.txt')
