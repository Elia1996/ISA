function [output] = myfi(x,width,int_bit)
if nargin<3
    int_bit=1;
end
output = fi(x,1,width,width-int_bit,'RoundingMethod','Floor','OverflowAction','Wrap');
end

