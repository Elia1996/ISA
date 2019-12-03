function [L_V,nl] = f_L_V(Nb)
%	Summary of this function goes here
%   Vettore di altezza massima per ogni livello calcolata con la formula
%   L_V(i)=floor(3/2*L_V(i-1))

Nb=16;
l=0+1;
L_V(l)=2;

while L_V(l) < (Nb/2)+1
    l=l+1;
    L_V(l) = floor(3/2*L_V(l-1)); % Il maggiore (ovvero l'ultimo) è Nb/2+1 percheè è radix4
end
nl=l;

end

