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

Mult_VMAT = zeros(L_V(nl),2*Nb+2,nl); %inizializzazione A ZERO
PP_MAT=flip(PP_MAT,2);
% scrivere la prima matrice a piramide


%%
z=Nb+4; % numero di bit del primp PP, il +4 per l'estensione di segno e per il bit in pi� 
        % derivante dalla possibilita di fare *2 o *-2
   

fprintf(fp,'\n\n\t------------------------------------------\n');
fprintf(fp,'\t-- PYRAMID\n');
fprintf(fp,'\t------------------------------------------\n\n');
    
r=1; %partiamo dalla prima riga (in VHDL mettere 0)

start_nl = Nb/2+1; % numero di livelli iniziale

while r <= start_nl % se non abbiamo finito il numero di prodotti parziali
    % to                    from 
    t_riga= r;              riga= r;
    t_col_start= z;         col_start= z-(2*(r-1));  
    t_col_end = (2*r-1);    col_end= 1;
    t_lev= 1;
    Mult_VMAT(t_riga, t_col_start:-1:t_col_end, t_lev)=7.*PP_MAT(riga, col_start:-1:col_end); %% tutta la parte destra della piramide
    fprintf(fp,'\t\tmult_vmat(0,%d)(%d DOWNTO %d) <= pp_mat(%d)(%d DOWNTO 0);\n',...
                t_riga-1, t_col_start-1, t_col_end-1, riga-1, col_start-1);
    
    if r < start_nl
        t_riga= r+1;     riga= r;
        t_col = (2*r-1);
        Mult_VMAT(t_riga, t_col, 1)=sign_pp(riga); %% segni da aggiungere alla parte destra della piramide
        fprintf(fp,'\t\tmult_vmat(0,%d)(%d) <= sign_pp(%d);\n', t_riga-1, t_col-1, riga-1);
    end
    
    if r > 1 && r < start_nl-1 %% non consideriamo la prima e le ultime due righe (parte sinistra della piramide)
        % to                         from
        t_riga= start_nl-r+1;        riga= r;
        t_col_start= z+2*(r-1)-1;    col_start= Nb;  
        t_col_end = z+1;             col_end= z-(2*r);
        t_lev= 1;
        Mult_VMAT(t_riga, t_col_start:-1:t_col_end, t_lev)= 8.*PP_MAT(riga, col_start:-1:col_end);
        fprintf(fp,'\t\tmult_vmat(0,%d)(%d DOWNTO %d) <= pp_mat(%d)(%d DOWNTO %d);\n',...
                     t_riga-1, t_col_start-1, t_col_end-1, riga-1, col_start-1, col_end-1);
    end
    
    if r >= start_nl-1 %% consideriamo le ultime due della parte sinistra
        % to                         from
        t_riga= start_nl-r+1;        riga= r;
        t_col_start= 2*Nb;           col_start= 2*Nb-2*r-1;  
        t_col_end = z+1;             col_end= z-(2*r);
        t_lev= 1;
        Mult_VMAT(t_riga, t_col_start:-1:t_col_end, t_lev)=9.*PP_MAT(riga, col_start:-1:col_end);
        fprintf(fp,'\t\tmult_vmat(0,%d)(%d DOWNTO %d) <= pp_mat(%d)(%d DOWNTO %d);\n',...
                    t_riga-1, t_col_start-1, t_col_end-1, riga-1, col_start-1, col_end-1);
    end
    
    r=r+1;
end

%Mult_VMAT= flip(Mult_VMAT,2)

Mult_VMAT;
end

