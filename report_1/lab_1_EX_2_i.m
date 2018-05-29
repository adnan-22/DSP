clc
clear all
close all
n=-5:1:5;
C=1;
subplot(231)
a=1.22;
x1=C*(a.^n);
stem(n,x1);
title('a > 1');
subplot(232)
a=0.722;
x2=C*(a.^n);
stem(n,x2);
title('0 < a < 1');
subplot(233)
a=1;
x3=C*(a.^n);
stem(n,x3);
title('a = 1');
subplot(234)
a=-1.122;
x4=C*(a.^n);
stem(n,x4);
title('a < - 1');
subplot(235)
a=-0.922;
x5=C*(a.^n);
stem(n,x5);
title('- 1 < a <0');
subplot(236)
a=-1;
x6=C*(a.^n);
stem(n,x6);
title('a = - 1');