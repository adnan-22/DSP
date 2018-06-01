clear all
close all
clc
N=41;
p=[0.8 -0.44 0.36 .02];
d=[1 0.7 -0.45 -0.6];
[x,n]=stepseq(0,0,40); % u(n) for 41 samples
k=0:N-1;               % time index for first N samples
y=filter(p,d,x);
stem(k,y)