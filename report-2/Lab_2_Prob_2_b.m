clear all
close all
clc
n=-15:15;
[a,~]=stepseq(-5,-15,15);%u(n+5)
[b,~]=stepseq(6,-15,15);%u(n-6)
[x,~]=sigadd((n.^2).*a,n,-(n.^2).*b,n);
[c,~]=impseq(0,-15,15);%d(n)
y=10.*c; % ampl of 10*d(n)
d=20.*(0.5.^n);
[e,~]=stepseq(4,-15,15);%u(n-4)
[f,~]=stepseq(10,-15,15);%u(n-10)
[z,~]=sigadd(d.*e,n,-d.*f,n);
x21=sigadd(x,n,y,n);
x2=sigadd(x21,n,z,n);
stem(n,x2)