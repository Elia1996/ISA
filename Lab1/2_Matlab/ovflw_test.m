clear all 

a0=-757/2^12
a1=401/2^12
xmax=(2^12-1)/2^12;
xmin=-1;
a0xmax=myfi(a0*xmax,12);
a0xmin=myfi(a0*xmin,12);
a1xmax=myfi(a1*xmax,12);
a1xmin=myfi(a1*xmin,12);
fb1=a0xmax+a1xmax;
fb2=a0xmax+a1xmin;
fb3=a0xmin+a1xmax;
fb4=a0xmin+a1xmin;
fb1=fb1.data
fb2=fb2.data
fb3=fb3.data
fb4=fb4.data

b0=846/2^12
b1=423/2^12
xmax=(2^12-1)/2^12;
xmin=-1;
b0xmax=myfi(b0*xmax,12);
b0xmin=myfi(b0*xmin,12);
b1xmax=myfi(b1*xmax,12);
b1xmin=myfi(b1*xmin,12);
ff1=b0xmax+b1xmax;
ff2=b0xmax+b1xmin;
ff3=b0xmin+b1xmax;
ff4=b0xmin+b1xmin;
ff1=ff1.data
ff2=ff2.data
ff3=ff3.data
ff4=ff4.data

ffmax=max(ff1,ff2)
ffmin=min(ff3,ff4)
fbmax=min(fb1,fb2)
fbmin=max(fb3,fb4)

v=myfi(xmax+ffmax,13,2);
v=v.data;
vb0=myfi(v*b1,13,2);
vb0=vb0.data;
out1=myfi(vb0+ffmax,13,2);
out1=out1.data

v=myfi(xmin+ffmin,13,2);
v=v.data;
vb0=myfi(v*b1,13,2);
vb0=vb0.data;
out2=myfi(vb0+ffmin,13,2);
out2=out2.data

A(1)=-a0
A(2)=a0^2-a1
A(3)=2*a0*a1 - a0^3
A(4)=+a0^4 + a1^2 -2*a0^2*a1
A(5)=4*a0^3*a1 - 3*a0*a1^2 - a0^5
A(6)=6*a0^2*a1^2 - 5*a0^4*a1 + a0^6 - a1^3
A(7)=-3*a0^3*a1 + 6*a0^5*a1 - 4*a0^3*a1^2 + a1^3*a0 - a0^7

B(1)=b1
B(2)=b1*A(1) + b0
B(3)=b1*A(2) + b0*A(1)
B(4)=b1*A(3) + b0*A(2)
B(5)=b1*A(4) + b0*A(3)
B(6)=b1*A(5) + b0*A(4)
B(7)=b1*A(6) + b0*A(5)

% xx=xmin
% xmin=xmax
% xmax=x
N=2
Na=8
y(7)=xmin; y(6)=xmax; y(5)=xmax; y(4)=xmin; y(3)=xmin; y(2)=xmin; y(1)=xmin;
y=flip(y)
disp("---------------------------------")
for i=1:N
    if i==N
        xx=xmin;
        xmin=xmax;
        xmax=xx;
        x=0
        y(7)=xmin; y(6)=xmax; y(5)=xmax; y(4)=xmin; y(3)=xmin; y(2)=xmin; y(1)=xmin;
        y=flip(y);
    end
    
    for n=1:Na-1
        x(1:n)=y(1:n)
        if n>1
            A(1:n-1)
            x(1:n-1)
            fb(n-1)=sum(A(1:n-1).*x(1:n-1));
            v(n)=xmin+fb(n-1);
            ff(n-1)=sum(B(1:n-1).*x(1:n-1));
            out(n)=ff(n-1)+v(n)*b0;
        else
            v(n)=xmin;
            out(n)=v(n)*b0;
        end
    end
    
    t_fb(i,:)=fb;
    t_v(i,:)=v;
    t_ff(i,:)=ff;
    t_out(i,:)=out;
end
figure(1)
for i=1:N
    plot([1:1:Na-3],t_fb(i,2:Na-2)-t_fb(i,1:Na-3),'-o','LineWidth',2); hold on
end
title("Slowling down of feedback fb(n)-ff(n-1) ")
legend('Negative', 'Positive')
xlabel("Clock cycle")
ylabel("fb(n)-ff(n-1)")

figure(2)
for i=1:N
    plot([1:1:Na-1],t_v(i,:),'-o','LineWidth',2); hold on
end
title("V")
legend('Negative', 'Positive')
xlabel("Clock cycle")
ylabel("v")

figure(3)
for i=1:N
    plot([1:1:Na-2],t_ff(i,:),'-o','LineWidth',2);hold on
end
title("Feedforward")
legend('Negative', 'Positive')
xlabel("Clock cycle")
ylabel("ff")


figure(4)
for i=1:N
    plot([1:1:Na-2],t_fb(i,:),'-o','LineWidth',2); hold on;
end
title("Feedback")
legend('Negative', 'Positive')
xlabel("Clock cycle")
ylabel("fb")

figure(5)
for i=1:N
    plot([1:1:Na-1],t_out(i,:),'-o','LineWidth',2); hold on;
end
title("Output")
legend('Negative', 'Positive')
xlabel("Clock cycle")
ylabel("Dout")