function [ xe,x0,m ] = evenodd( x,n )
[xf,nf]=sigfold(x,n);   % x(-n)
[xe,~]=sigadd(0.5*x,n,0.5*xf,nf);
[x0,m]=sigadd(0.5*x,n,-0.5*xf,nf);
end

