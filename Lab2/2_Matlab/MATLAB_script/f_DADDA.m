function [Mult_VMAT] =f_DADDA(Mult_VMAT, C_V, L_V, nl, Nb)
%   Summary of this function goes here
%   Questa funzione riceve il vettore di matrici Mult_VMAT con solo la
%   prima matrice inizializzata a piramide. Cicla sulle colonne e istanzia
%   i FA e HA in base a C_V(c) L_V(l).
%   

N_FA_tot=0; %Numero di FA totali
N_HA_tot=0; %Numero di HA totali


l=nl-1;
while l>1
    fprintf('\n\n------------------------------------------\n');
    fprintf('-- LEVEL %d\n', nl-l);
    fprintf('------------------------------------------\n\n');
    cy_c=0; %numero di carry della colonna
    cy_cp1=0; %numero di carry della colonna successiva
    c=1;
    
    while (c <= 2*Nb) 
        N_FA=0;
        N_HA=0;
        if C_V(c) > L_V(l) % se gli elementi della colonna sono maggiori dell'altezza del livello successivo
            
            % troviamo il numero di FA e HA da instanziare in questa
            % colonna c di questo livello l
            N_FA=floor((C_V(c)-L_V(l)+cy_c)/2);
            N_HA=mod((C_V(c)-L_V(l)+cy_c),2);
            r_l=1; % la riga del livello corrente
            r_lp1=1; % è la stessa riga ma del livello successivo alla stessa colonna
            
            i_FA=1; %contatore sul numero di FA
            while i_FA <= N_FA % se abbiamo ancora FA da instanziare
                fprintf('FA_%d_%d_%d: FA PORT MAP (\n', nl-l-1, c-1, i_FA);
                fprintf('  mult_vmat(%d)(%d)(%d),\n', nl-l-1, r_l-1, c-1);
                fprintf('  mult_vmat(%d)(%d)(%d),\n', nl-l-1, r_l+1-1, c-1);
                fprintf('  mult_vmat(%d)(%d)(%d),\n', nl-l-1, r_l+2-1, c-1);
                fprintf('  mult_vmat(%d)(%d)(%d),\n', nl-l+1-1, cy_cp1, c+1); % carry out
                fprintf('  mult_vmat(%d)(%d)(%d));\n', nl-l+1-1, cy_c+r_lp1-1, c-1); % sum
                
                % riempimento della matrice successiva (per MATLAB)
                Mult_VMAT(cy_cp1+1, c+1, nl-l+1)=3; %3 per il carry
                Mult_VMAT(cy_c+r_lp1, c, nl-l+1)=2; %2 per la somma
                
                cy_cp1=cy_cp1+1; % il numero di elementi già inseriti nella colonna dei carry out si incrememta di 1 perchè ho messo un FA
                r_l=r_l+3; % incrementiamo di 3 perche 3 pallini sono stati presi dal FA
                r_lp1=r_lp1+1; % incrementiamo la riga dei bit di somma del FA nel livello successivo di 1
                i_FA=i_FA+1;
                N_FA_tot=N_FA_tot+1;
            end
            
            if (N_HA == 1)
                fprintf('HA_%d_%d: HA PORT MAP (\n', nl-l-1, c-1);
                fprintf('  mult_vmat(%d)(%d)(%d),\n', nl-l-1, r_l-1, c-1);
                fprintf('  mult_vmat(%d)(%d)(%d),\n', nl-l-1, r_l+1-1, c-1);
                fprintf('  mult_vmat(%d)(%d)(%d),\n', nl-l+1-1, cy_cp1, c+1-1); % carry out
                fprintf('  mult_vmat(%d)(%d)(%d));\n', nl-l+1-1, cy_c+r_lp1-1, c-1); % sum
                
                % riempimento della matrice successiva (per MATLAB)
                Mult_VMAT(cy_cp1+1, c+1, nl-l+1)=3; %3 per il carry
                Mult_VMAT(cy_c+r_lp1, c, nl-l+1)=2; %2 per la somma
                
                cy_cp1=cy_cp1+1; % il numero di elementi già inseriti nella colonna dei carry out si incrememta di 1 perchè ho messo un FA
                r_l=r_l+2; % incrementiamo di 3 perche 3 pallini sono stati presi dal FA
                r_lp1=r_lp1+1; % incrementiamo la riga dei bit di somma del FA nel livello successivo di 1
                N_HA_tot=N_HA_tot+1;
            end
            
            
        else
            r_l=1;
            r_lp1=1;
        end
        
        while (r_l <= C_V(c))
            fprintf('mult_vmat(%d)(%d)(%d) <= mult_vmat(%d)(%d)(%d);\n',nl-l+1-1, cy_c+r_lp1-1, c-1, nl-l-1,  r_l-1, c-1);

            % riempimento della matrice successiva (per MATLAB)
            Mult_VMAT(cy_c+r_lp1, c, nl-l+1)=Mult_VMAT(r_l, c, nl-l);
            r_l=r_l+1;
            r_lp1=r_lp1+1;
        end
        
        cy_cp1=cy_c;
        
        C_V(c)=C_V(c)-2*(N_FA)-N_HA+cy_c; % aggiornamento de pallini
        
        c=c+1;
    end
    
    
    
    l=l-1;
    
end



end

