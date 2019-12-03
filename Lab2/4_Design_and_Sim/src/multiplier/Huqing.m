clear
close all
clc

n=16;
p=zeros(1,2*n);
p(1)=2;
p(2)=1;
close all
clc

n=16;
p=zeros(1,2*n);
p(1)=2;
p(2)=1;
for i=3:2*n
    p(i)=(1-floor((i-j)/n))*(p(j-2)+1)+floor((i-1)/n)*((n/2+1)-floor(i/(n+5))*(floor((i-n-4)/2)+1))
end
for i=3:2*n
    p(i)=(1-floor((i-1)/n))*(p(i-2)+1)+floor((i-1)/n)*((n/2+1)-floor(i/(n+5))*(floor((i-n-4)/2)+1))
end