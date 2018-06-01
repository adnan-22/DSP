function [y,n] = sigshift(x,m,n0)%ampl,disc time,shift
    y=x;
    n=m+n0; %valid for eqn x(n-n0) by default right shift for pos n0
end

