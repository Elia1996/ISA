function [Mult_VMAT] =f_Mult_VMAT(L_V,PP_MAT,nl,Nb,sign_pp,fp)
%   Summary of this function goes here
%   nl=size(L_V)
%   sign_pp � il vettore dei segni dei prodotti parziali che vanno aggiunti
%   alla piramide
%   Vettore nl di matrici 2Nb*L_V(nl)
%   questa funzione crea il vettore di matrici e va ad inizializzare la
%   prima matrice con la piramide dei prodotti parziali
%   PP_MAT � una matrice (Nb+4)*L_V(nl) che poi noi andiamo a posizionare a
%   piramide



%%
%nl: numero di livelli
%L_V(nl): numero di righe massime (ovvero altezza massima della prima matrice)
%2*Nb: numero di colonne della base della piramide

Mult_VMAT = zeros(L_V(nl),2*Nb,nl); %inizializzazione A ZERO
PP_MAT=flip(PP_MAT,2);
% scrivere la prima matrice a piramide


%%
z=Nb+4; % numero di bit del primp PP, il +4 per l'estensione di segno e per il bit in pi� 
        % derivante dalla possibilita di fare *2 o *-2
   

fprintf(fp,'\n\n\t------------------------------------------\n');
fprintf(fp,'\t-- PYRAMID\n');
fprintf(fp,'\t------------------------------------------\n\n');
    
r=1; %partiamo dalla prima riga (in VHDL mettere 0)

while r <= Nb/2+1 % se non abbiamo finito il numero di prodotti parziali
    
    Mult_VMAT(r, z:-1:(2*r-1), 1)=PP_MAT(r, (z-(2*(r-1))):-1:1); %% tutta la parte destra della piramide
    fprintf(fp,'\t\tmult_vmat(0,%d)(%d DOWNTO %d) <= pp_mat(%d)(%d DOWNTO 0);\n', r-1, z-1, 2*r-2, r-1, (z-1)-(2*(r-1)));
    
    if r < Nb/2+1
        Mult_VMAT(r+1, (2*r-1), 1)=sign_pp(r); %% segni da aggiungere alla parte destra della piramide
        fprintf(fp,'\t\tmult_vmat(0,%d)(%d) <= sign_pp(%d);\n', r, 2*(r-1), r-1);
    end
    
    if r > 1 && r < Nb/2+1-1 %% non consideriamo la prima e le ultime due righe (parte sinistra della piramide)
        Mult_VMAT(Nb/2+1-r+1, z+2*(r-1)-1:-1:z+1, 1)=PP_MAT(r, Nb:-1:z-(2*r));
        fprintf(fp,'\t\tmult_vmat(0,%d)(%d DOWNTO %d) <= pp_mat(%d)(%d DOWNTO %d);\n', L_V(nl)-r, (z-1)+2*(r-1)-1, z, r-1, Nb-1, (z-1)-(2*r));
    end
    
    if r >= Nb/2+1-1 %% consideriamo le ultime due della parte sinistra
        Mult_VMAT(Nb/2+1-r+1, 2*Nb:-1:z+1, 1)=PP_MAT(r, 2*Nb-2*r-1:-1:z-(2*r));
        fprintf(fp,'\t\tmult_vmat(0,%d)(%d DOWNTO %d) <= pp_mat(%d)(%d DOWNTO %d);\n', L_V(nl)-r, 2*Nb-1, z, r-1, 2*Nb-2*r-2, z-(2*r)-1);
    end
    
    r=r+1;
end

%Mult_VMAT= flip(Mult_VMAT,2)

Mult_VMAT;
end

