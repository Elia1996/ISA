function [box_new] = bd_or(box_old,box_to_add)
    % Box Drowing Or function
    %   viene dato il box presente in una casella e quello che si vorrebbe
    %   mettere, viene ritornata la composizione dei due.
    %   nel caso in cui non sia un box drowing viene semplicemente ritornato
    %   bot_to_add.
    %   box_old deve essere passato in notazione "string code"
    %   box_to_add invece in notazione "memory code"

    % passo in notazione bit code
    box_old_bc = bd_code(box_old,"sc", "bc");
    if box_old_bc=="-1"
        box_new= bd_code(box_to_add, "mc", "sc");
    else
        box_to_add_dec= hex2dec(bd_code(box_to_add,"mc","bc"));
        box_old_dec = hex2dec(box_old_bc);
        box_new_bc= dec2hex( bitor(box_old_dec, box_to_add_dec) );
        box_new= bd_code(box_new_bc, "bc", "sc");
    end
end

