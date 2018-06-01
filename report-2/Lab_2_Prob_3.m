clear all
close all
clc
[x,n1]=stepseq(0,0,25); % generating u(n)
nx=min(n1):max(n1);     % index of u(n)
c=(0.8).^nx; %const part
x=c.*x;      %amplitude of u(n)
[y,n]=conv_m(x,nx,x,nx);
subplot(211)
stem(nx,x)
title('x(n)=(0.8)^n * u(n)')
subplot(212)
stem(n,y)
title('y(n)=x(n)*x(n)')