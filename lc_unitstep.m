%LC of unit step
clc
clear all
close all
syms n
x=heaviside(n);
h=x;
X=ztrans(x);
H=ztrans(h);
Y=X.*H;
y=iztrans(Y);
pretty(y)
