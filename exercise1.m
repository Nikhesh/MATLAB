clc
clear all
close all
n=-10:10
x1=(n==0);
E1=ener(x1);
x2=((n==0)-(n==-5));
E2=ener(x2);
x3=((n==0)-(n==1)+(n==2));
E3=ener(x3);
x4=((n>=0)-(n>=3));
E4=ener(x4);
subplot(2,2,1),stem(n,x1,'filled'),
subplot(2,2,2),stem(n,x2,'filled'),
subplot(2,2,3),stem(n,x3,'filled'),
subplot(2,2,4),stem(n,x4,'filled')


