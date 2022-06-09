clear all
close all
clc
n=0:199;
xn=cos(0.2*pi*n)+0.5*cos(0.6*n);
subplot(311)
stem(n,xn)
title('x(n)')

[x2n n2]=sigshift(xn,n,20);
x2n=0.5*x2n;

[y3 n3]=sigadd(n,xn,n2,x2n);

y=y3(1:200); %taking 1st 200 samples

subplot(312)
stem(n,y)
title('y(n)')

subplot(313) 
%Method-1
%%[yrr, nrr] = convolution_sum(n, xn, n, y); 
%%stem(nrr,yrr);

%Method-2
z = xcorr(y); %auto-correlation
index = min(n3)+min(n):max(n)+max(n); %corresponding time index vector of z
plot(index, z/max(z)); % showing normalized output
title('auto correleted output')
[a delay]=max(z)

