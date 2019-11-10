clear
close all
clc

% set the parallelism for new coefficients
% new_width=17 is the best value to have maximum accuracy
new_width=17;

%% INPUT OUTPUT FROM C
fin = fopen('../4_Design_and_Sim/sim_in/samples.txt','r');
xq = fscanf(fin,'%d');
xq = xq'/2^11;
fclose(fin);

fin = fopen('../4_Design_and_Sim/sim_out/results_c.txt','r');
yq = fscanf(fin,'%d');
yq = yq';
fclose(fin);

%% SCRIPT BY PROF TO TAKE COEFFICIENTS
N=2; %% filter order
nb=12; %% number of bits
x=xq;
[bi, ai, bq, aq]=myiir_design(N, nb); %% filter design
y=filter(bq, aq, x); %% apply filter
% quantize input and output
yq_butter=floor(y*2^(nb-1));
idy=find(yq_butter==2^(nb-1));
yq_butter(idy)=2^(nb-1)-1;

%% MY IIR FUNCTION

a0=aq(2);
a1=aq(3);
b0=bq(1);
b1=bq(2);
b2=bq(3);

B0=b0;
B1=b1-a0*b0;
B2=b2-a0*b1-a1*b0+a0*a0*b0;
B3=-(b2*a0+a1*b1-b1*a0*a0);
B4=-(a1*b2-b2*a0*a0);
A0=-a0*a0*a0+2*a0*a1;
A1=a1*a1-a0*a0*a1;

B=[B0 B1 B2 B3 B4];
A=[A0 A1];
B=fi(B,1,new_width,new_width-1);
A=fi(A,1,new_width,new_width-1);

% B=[B0 B1 B2 B3 B4]/2^(new_width-12);
% A=[A0 A1]/2^(new_width-12);
% B=fi(B,1,new_width,new_width-1);
% A=fi(A,1,new_width,new_width-1);

%new_width=22;

xx = myfi([zeros(1,4) xq],12);
yy = myfi(zeros(1,length(xq)+4),12);
for n=1:(length(xq))
   x_sum = myfi(sum(myfi(xx(n:n+4).*flip(B),new_width)),new_width); 
   yy(n+4) = myfi(myfi(sum(myfi(yy(n:n+1).*flip(A),new_width)),new_width) + x_sum, new_width);
   yy(n+4)=myfi(yy(n+4),12);
end


% yy=fi(yy*2^(new_width-12),1,12,11,'RoundingMethod','Floor','OverflowAction','Wrap');

% % xx = [zeros(1,4) xq]/2^11;
% % yy = zeros(1,length(xq)+4);
% % for n=1:(length(xq))
% %    x_sum = sum(xx(n:n+4).*flip(B));
% %    yy(n+4) = sum(yy(n:n+1).*flip(A)) + x_sum;
% % end

figure
plot(1:1:length(xq),yy(5:end)*2^11,'g*')
hold on
plot(1:1:length(xq),yq,'bo')
hold on
legend('NEW MODEL','REFERENCE MODEL (C)')
xlabel("N-th sample");
ylabel("y[N]");
title("Comparisons among reference, no optimized and optimized models");

figure
plot(1:1:length(xq),yq-yy(5:end).*2^11,'*')
xlabel("N-th sample");
ylabel("y_{REFERENCE}[N] - y_{OPTIMIZED}[N]");
title("Differences between reference and optimized models");

figure
plot(1:1:length(xq),yq_butter-yy(5:end).*2^11,'*')
xlabel("N-th sample");
ylabel("y_{FILTER}[N] - y_{OPTIMIZED}[N]");
title("Differences between matlab filter-function and optimized model");


fp=fopen('resultsMATLAB_DF1.txt', 'w');
fprintf(fp, '%d\n', yy(5:end)*2^11);
fclose(fp);