function [Mult_VMAT] =f_DADDA(Mult_VMAT,C_V,L_V)
%   Summary of this function goes here
%   Questa funzione riceve il vettore di matrici Mult_VMAT con solo la
%   prima matrice inizializzata a piramide. Cicla sulle colonne e istanzia
%   i FA e HA in base a C_V(c) L_V(l).
%   

Mult_VMAT = f(Mult_VMAT,C_V,L_V);
end

