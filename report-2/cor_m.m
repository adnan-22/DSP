function [ y,n ] = cor_m( x,nx,h,nh )
n=min(nx)+min(nh):max(nx)+max(nh);
y=xcorr(x,h);
end

