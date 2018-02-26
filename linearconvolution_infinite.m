clc
clear all
close all
syms n
x=heaviside(n); %u[n]
h=heaviside(n); %u[n]
X=ztrans(x);
H=ztrans(h);
Y=X.*H;
y=iztrans(Y);
pretty(y)