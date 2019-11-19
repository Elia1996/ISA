function [output] = myfi(x,width)

output = fi(x,1,width,width-2,'RoundingMethod','Floor','OverflowAction','Wrap');

end

