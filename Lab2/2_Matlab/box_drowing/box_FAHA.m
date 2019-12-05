function [strvmat_out] = box_FAHA(strvmat,r,c,l,nr, comp)
    % mette un box per il full adder o per l'helf adder
    % r c e l partono da 1
    if comp=="HA"
        strvmat_out=box_vect_of_str(strvmat, (r-1)*2+1+(l-1)*(nr)*2+l-1, c*2,1,2);
    else
        strvmat_out=box_vect_of_str(strvmat, (r-1)*2+1+(l-1)*(nr)*2+l-1, c*2,1,3);
    end

end

