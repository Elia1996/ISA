clear
close all
clc
format short

new_width=12;

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

B=[b0 b1 b2];
A=[a0 a1];
B=fi(B,1,new_width,new_width-1);
A=fi(A,1,new_width,new_width-1);


xx = myfi(xq,new_width);
yy = zeros(1,length(xx));
V=0;
V1=0;
V2=0;
s1=0;
s2=0;

for n=1:(length(xx))
    m1 = myfi(V1*-A(1),new_width);
    m2 = myfi(V2*-A(2),new_width);
    s1 = myfi(m1+m2, new_width);
    m3 = myfi(V1*B(2),new_width);
    m4 = myfi(V2*B(3),new_width);
    s2 = myfi(m3+m4, new_width);
    V = myfi(s1+xx(n), new_width);
    m5 = myfi(V*B(1), new_width);
    yy(n) = myfi(s2+m5, new_width);
    
%     if(n<5)
%         fprintf("%10d %10d %10d %10d %10d %10d %10d %10d %10d %10d\n",V*2048,V1*2048,m1*2048,m3*2048,V2*2048,m2*2048,m4*2048,s1*2048,s2*2048,yy(n)*2048);
%     end
    
    V2=V1;
    V1=V;
end

yy=fi(yy*2^11,1,12,0,'RoundingMethod','Floor','OverflowAction','Wrap');


figure
plot(1:1:length(xx),yy,'r*')
hold on
plot(1:1:length(xx),yq,'bo')
hold on
legend('OLD MODEL','REFERENCE MODEL (C)')
xlabel("N-th sample");
ylabel("y[N]");
title("Comparisons between reference and no optimized");

figure
plot(1:1:length(xq),yq-yy,'*')
xlabel("N-th sample");
ylabel("y_{REFERENCE}[N] - y_{NO-OPTIMIZED}[N]");
title("Differences between reference and optimized models");
