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

xx = myfi(xq,12);
yy = myfi(zeros(1,length(xq)),12);
sA1 = myfi2(zeros(1,length(xq)+4),13);

for n=1:(length(xq))
    mA1 = myfi(A(1)*sA1(n+1), new_width);
    mA2 = myfi(A(2)*sA1(n), new_width);
    
    sA2 = myfi(mA1 + mA2, new_width);
    sA1(n+4) = myfi2(xx(n) + sA2, 13);
    
    mB0 = myfi(B(1)*sA1(n+4), new_width);
    mB1 = myfi(B(2)*sA1(n+3), new_width);
    mB2 = myfi(B(3)*sA1(n+2), new_width);
    mB3 = myfi(B(4)*sA1(n+1), new_width);
    mB4 = myfi(B(5)*sA1(n), new_width);
    
    s_final = myfi(mB0+mB1+mB2+mB3+mB4, new_width);
    
    yy(n)=myfi(s_final,12);
end


% yy=fi(yy*2^(new_width-12),1,12,11,'RoundingMethod','Floor','OverflowAction','Wrap');

% % xx = [zeros(1,4) xq]/2^11;
% % yy = zeros(1,length(xq)+4);
% % for n=1:(length(xq))
% %    x_sum = sum(xx(n:n+4).*flip(B));
% %    yy(n+4) = sum(yy(n:n+1).*flip(A)) + x_sum;
% % end

figure
plot(1:1:length(xq),yq-yq_butter,'*')
ll=sum(yq-yq_butter)/length(xq);
line([0 202], [ll ll], 'color','r');
xlabel("N-th sample");
ylabel("y_{C-REFERENCE}[N] - y_{FILTER}[N]");
title("Differences between C-reference and filter-function models");
ylim([-3.5 3.5])
xlim([0 202])

figure
plot(1:1:length(xq),yy*2^11,'g*')
hold on
plot(1:1:length(xq),yq,'bo')
hold on
legend('NEW MODEL','REFERENCE MODEL (C)')
xlabel("N-th sample");
ylabel("y[N]");
title("Comparisons between C-reference and DF2-optimized models");
xlim([0 208])

figure
plot(1:1:length(xq),yq-yy.*2^11,'*')
ll=sum(yq-yy.*2^11)/length(xq);
line([0 202], [ll ll], 'color','r');
xlabel("N-th sample");
ylabel("y_{C-REFERENCE}[N] - y_{DF2-OPTIMIZED}[N]");
title("Differences between C-reference and DF2-optimized models");
ylim([-3.5 3.5])
xlim([0 202])

figure
plot(1:1:length(xq),yq_butter-yy.*2^11,'*')
ll=sum(yq_butter-yy.*2^11)/length(xq);
line([0 202], [ll ll], 'color','r');
xlabel("N-th sample");
ylabel("y_{FILTER}[N] - y_{DF2-OPTIMIZED}[N]");
title("Differences between matlab filter-function and DF2-optimized model");
ylim([-3.5 3.5])
xlim([0 202])

fin = fopen('resultsMATLAB_DF1.txt','r');
df1 = fscanf(fin,'%d');
df1 = df1';
fclose(fin);

figure
plot(1:1:length(yy),df1-yy.*2^11,'*')
ll=sum(df1-yy.*2^11)/length(yy);
line([0 202], [ll ll], 'color','r');
xlabel("N-th sample");
ylabel("y_{OPT-DF1}[N] - y_{OPT-DF2}[N]");
title("Differences between DF1 and DF2 optimized model");
ylim([-3.5 3.5])
xlim([0 202])

fin = fopen('resultsMATLAB_DF2.txt','w');
fprintf(fin,'%d\n',yy.*2^11);
fclose(fin);
fin = fopen('../4_Design_and_Sim/sim_out/results_m.txt','w');
fprintf(fin,'%d\n',yy.*2^11);
fclose(fin);
