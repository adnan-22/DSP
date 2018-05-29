clc
clear all
close all
n=-15:1:15;
A=2;
P=2*pi;
W=pi/8;
c=A*exp(P*i);
a=exp(W*i);
x1=c*(a.^n);
stem(n,x1);
hold on
plot(n,x1,'-.')