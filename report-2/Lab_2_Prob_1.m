clear all
close all
clc
x=[1 2 3 4 5 6 7 6 5 4 3 2 1];
n=-2:10;
subplot(311)
stem(n,x)
title('x(n)')
%a
[xa1,na1]=sigshift(x,n,5);
[xa2,na2]=sigshift(x,n,-4);
[x1,n1]=sigadd(2.*xa1,na1,-3.*xa2,na2);
subplot(312)
stem(n1,x1)
title('x1(n)')
%b
[xb11,nb11]=sigfold(x,n);
[xb1,nb1]=sigshift(xb11,nb11,3);
[xb22,nb22]=sigshift(x,n,2);
[xb2,nb2]=sigmult(x,n,xb22,nb22);
[x2,n2]=sigadd(xb1,nb1,xb2,nb2);
subplot(313)
stem(n2,x2)
title('x2(n)')