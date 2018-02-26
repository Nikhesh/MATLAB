%To extract the even part of u[n]
clc
clear all
close all
n=-10:10;
x1=(n>=0);
x2=fliplr(x1);%Folding of u[n]
x_even=0.5.*(x1+x2);
E1=ener(x_even);
x_odd=0.5.*(x1-x2);
E2=ener(x_odd);
y=x_even+x_odd;
E=ener(y);
stem(n,y,'filled')