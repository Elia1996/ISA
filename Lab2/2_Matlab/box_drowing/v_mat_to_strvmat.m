function [strvmat] = v_mat_to_strvmat(v_mat)
    % Trasforma un vettore di matrici in un vettore di 
    % vettori di stringhe
    nl=length(v_mat(1,1,:));
    nr=length(v_mat(:,1,1));
    nc=length(v_mat(1,:,1));
    
    % ciclo sl numero di matrici
    for l=1:nl
        strvmat((l-1)*(nr*2+1)+1:(l)*(nr*2+1) , : ) = mat_to_strmat( v_mat(:,:,l) )';
    end
end

