clc
clear all
close all
syms n
x=(1/5)^n; %u[n]
h=heaviside(n)-heaviside(n-1); %delta[n]
X=ztrans(x);
H=ztrans(h);
Y=X.*H;
y=iztrans(Y);
pretty(y)