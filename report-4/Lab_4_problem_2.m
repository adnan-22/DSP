clear all
close all
clc
B=[1 0];
A=[1 -0.9];
%a
figure(1)
zplane(B,A)
title('pole & zero plot')
%b
figure(2)
freqz(B,A,222,2222)
title('Magnitude and Angle plot')
%c
figure(3)
[h,n]=impz(B,A,22);
stem(n,h)
title('Impulse Response h(n)')