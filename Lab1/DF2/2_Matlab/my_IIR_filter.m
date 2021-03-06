fs=10000 %% sampling frequency
f1=500;  %% first sinewave freq (in band)
f2=4500; %% second sinnewave freq (out band)

N=2; %% filter order
nb=12; %% number of bits

T=1/500; %% maximum period
tt=0:1/fs:10*T; %% time samples

x1=sin(2*pi*f1*tt); %% first sinewave
x2=sin(2*pi*f2*tt); %% second sinewave

x=(x1+x2)/2; %% input signal

[bi, ai, bq, aq]=myiir_design(N, nb); %% filter design

y=filter(bq, aq, x); %% apply filter

%% plots
figure
plot(tt,x1,'--d');
hold on
plot(tt,x2,'r--s');
plot(tt,x, 'g--+');
plot(tt, y, 'c--o');

legend('x1', 'x2', 'x', 'y')

%% quantize input and output
xq=floor(x*2^(nb-1));
idx=find(xq==2^(nb-1));
xq(idx)=2^(nb-1)-1;

yq=floor(y*2^(nb-1));
idy=find(yq==2^(nb-1));
yq(idy)=2^(nb-1)-1;

%% save input and output
fp=fopen('../4_Design_and_Sim/sim_in/samples.txt','w');
fprintf(fp,'%d\n', xq);
fclose(fp);

fp=fopen('../4_Design_and_Sim/sim_out/resultsm.txt', 'w');
fprintf(fp, '%d\n', yq);
fclose(fp);

fp=fopen('../4_Design_and_Sim/sim_in/vin_samples.txt', 'w');
% cycle to create vin std_logic signal, we have length(tt) number
% of sample so we should print exactly length(tt) 1 in vin_samples.txt
% file. but we want that in this file are present 0's too.
n_of_0=0
while n_of_0 < length(tt)
	var=rand*2<=1;
	fprintf(fp, '%d \n',var);
	if var==1
		n_of_0=n_of_0+1;
	end
end
fclose(fp);
