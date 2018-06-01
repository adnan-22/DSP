clear all
close all
clc
n=0:25;
s=0;
for m=0:10
    [a,~]=impseq(2.*m,0,25);
    a=a.*(m+1);
    [b,~]=impseq(2.*m+1,0,25);
    b=-b.*(m+1);
    [x1,nx1]=sigadd(a,n,b,n);
    s=s+x1;
end
stem(n,s)
