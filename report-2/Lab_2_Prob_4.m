clear all
close all
clc
x=[1 -2 4 6 -5 8 10];
nx=-4:2;
h=[2 3 0 -5 2 1];
nh=-1:4;
subplot(221)
stem(nx,x)
title('x(n)')
subplot(222)
stem(nh,h)
title('h(n)')
[y,n]=conv_m(x,nx,h,nh);%convolution
subplot(223)
stem(n,y)
title('y(n) = x(n)*h(n)')
%crosscorrelation
[y2,n2]=sigfold(y,n);
[r,l]=conv_m(x,nx,y2,n2);
subplot(224)
stem(l,r)
title('r (l) = x(n)*y(-n)')