clc
clear all
close all
w0=[0 pi/8 pi/4 pi/2 pi];
n=-15:1:15;
x1=cos(w0(1)*n);
subplot(3,2,[1:2]);
stem(n,x1);
title('Wo=0');
x2=cos(w0(2)*n);
subplot(3,2,3)
stem(n,x2);
title('Wo=pi/8');
x3=cos(w0(3)*n);
subplot(3,2,4)
stem(n,x3);
title('Wo=pi/4');
x4=cos(w0(4)*n);
subplot(3,2,5)
stem(n,x4);
title('Wo=pi/2');
x5=cos(w0(5)*n);
subplot(3,2,6)
stem(n,x5);
title('Wo=pi');