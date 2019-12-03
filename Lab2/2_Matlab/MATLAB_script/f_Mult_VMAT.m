function [Mult_VMAT] =f_Mult_VMAT(L_V,PP_MAT,nl,Nb,sign_pp)
%   Summary of this function goes here
%   nl=size(L_V)
%   sign_pp è il vettore dei segni dei prodotti parziali che vanno aggiunti
%   alla piramide
%   Vettore nl di matrici 2Nb*L_V(nl)
%   questa funzione crea il vettore di matrici e va ad inizializzare la
%   prima matrice con la piramide dei prodotti parziali
%   PP_MAT è una matrice (Nb+4)*L_V(nl) che poi noi andiamo a posizionare a
%   piramide



%%
%nl: numero di livelli
%L_V(nl): numero di righe massime (ovvero altezza massima della prima matrice)
%2*Nb: numero di colonne della base della piramide

Mult_VMAT = zeros(L_V(nl),2*Nb,nl); %inizializzazione A ZERO
PP_MAT=flip(PP_MAT,2)
% scrivere la prima matrice a piramide


%%
z=Nb+4; % numero di bit del primp PP, il +4 per l'estensione di segno e per il bit in più 
        % derivante dalla possibilita di fare *2 o *-2
        
r=1; %partiamo dalla prima riga (in VHDL mettere 0)

while r <= L_V(nl) % se non abbiamo finito il numero di prodotti parziali
    
    Mult_VMAT(r, z:-1:(2*r-1), 1)=PP_MAT(r, (z-(2*(r-1))):-1:1);
    
    if r<L_V(nl)
        Mult_VMAT(r+1, (2*r-1), 1)=sign_pp(r);
    end
    
    if r > 1 && r < L_V(nl)-1 %% non consideriamo la prima e le ultime due righe
        Mult_VMAT(L_V(nl)-r+1, z+2*(r-1)-1:-1:z+1, 1)=PP_MAT(r, Nb:-1:z-(2*r));
    end
    
    if r >= L_V(nl)-1 %% non consideriamo la prima e le ultime due righe
        Mult_VMAT(L_V(nl)-r+1, 2*Nb:-1:z+1, 1)=PP_MAT(r, 2*Nb-2*r-1:-1:z-(2*r));
    end
    
    r=r+1;
    
end

Mult_VMAT;
end

