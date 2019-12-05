function [str_mat] = mat_to_strmat(mat)
    % trasforma una matrice di numeri in una matrice di stringhe

    for r=1:length(mat(:,1))
        spaceline="";
        line="";
        for c=1:length(mat(r,:))
            spaceline= spaceline + "  ";
            line= line + " " + num2str(char(mat(r,c)+48));
        end
        spaceline= spaceline + " ";
        line= line + " ";
        str_mat(r*2-1)= spaceline;
        str_mat(r*2) = line;
    end
    str_mat(length(str_mat)+1)=spaceline;
end

