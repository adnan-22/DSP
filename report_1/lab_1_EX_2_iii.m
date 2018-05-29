clc
clear all
close all
n=-10:1:10;
A=4;
p=pi/4;
Eo=1/12;
W=4*pi/19;
subplot(121)
x1=A*exp(Eo*n).*(cos(W.*n));
plot(n,x1,'-.');
hold on
stem(n,x1);
title('Eo > 0');
subplot(122)
Eo=-1/12;
x2=A*exp(Eo*n).*(cos(W.*n));
plot(n,x2,'-.');
hold on
stem(n,x2);
title('Eo < 0');