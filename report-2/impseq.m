function [ x,n ] = impseq( n0,n1,n2 )%shift,start,end
n=n1:n2;
x=1*[(n-n0)==0];
end

