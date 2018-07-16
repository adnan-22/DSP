clear all
close all
clc
B=[1 0.4*sqrt(2) 0];
A=[1 -0.8*sqrt(2) 0.64];
[X,r]=deconv(B,A);
disp(X)