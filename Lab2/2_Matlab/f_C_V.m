function [C_V] = f_C_V(Nb)
%	Summary of this function goes here
%   Funzione del vettore di elementi per ogni colonna della piramide
%   questo vettore si incrementa di livello in livello andando ad
%   istanziare i vari FA e HA! 

C_V=zeros(2*Nb-1,1);
C_V(0+1)=2; % i vettori in MATLAB partono da 1
C_V(1+1)=1;

%funzione

for c=(2+1):2*Nb %estremi compresi
   C_V(c)=(1-floor((c-1)/Nb))*(C_V(c-2)+1)+floor((c-1)/Nb)*((Nb/2+1)-floor(c/(Nb+5))*(floor((c-Nb-4)/2)+1));
end

end

