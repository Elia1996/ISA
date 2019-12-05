function [vector_of_string_out] = box_xy(vector_of_string, r_lu, c_lu, w, h)
    % box_xy crea un box rettangolare nella posizione r_lu,c_lu di larghezza w
    % e altezza h.
    % r-lu e c_lu stanno per riga e colonna in alto a sinistra
    vos=vector_of_string;
    % trasformazione per avere lo stesso indice della matrice di partenza
    w=w+1;
    h=h*2;
    c_lu=c_lu*2;
    r_lu=r_lu*2-1;
    for r=1:length(vos)
       % inizializzo la stringa per salvare la riga temporaneamente
       stringa="";
       all_str= split(vos(r),"");
       % ciclo sulle colonne della riga corrente
       for c=1:length(all_str)
          character= all_str(c)
          if ( r==r_lu )
              if ( c==c_lu )
                  box= "luc";
              elseif ( c>c_lu && c<c_lu+w )
                  box= "o";
              elseif ( c==c_lu+w )
                  box= "ruc";
              else
                  box=character;
              end
          elseif ( r>r_lu && r<r_lu+h)
              if ( c==c_lu || c==c_lu+w )
                  box="v";
              else
                  box=character;
              end
          elseif ( r==r_lu+h )
              if ( c==c_lu )
                  box= "ldc";
              elseif ( c>c_lu && c<c_lu+w )
                  box= "o";
              elseif ( c==c_lu+w )
                  box= "rdc";
              else
                  box=character;
              end
          else
              box=character;
          end
          
          if box~=character
             stringa = stringa + bd_or(character,box); 
          else
             stringa = stringa + character;
          end
          c=c+1;
       end
       voso(r)=stringa;
    end
    
    vector_of_string_out=voso;
end

