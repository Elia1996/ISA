a0=-757/2^12;
a1=401/2^12;
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
fb1.data
fb2.data
fb3.data
fb4.data

b0=846/2^12;
b1=423/2^12;
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
ff1.data
ff2.data
ff3.data
ff4.data


