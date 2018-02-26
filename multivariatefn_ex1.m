clc
clear all
close all
f=@(x1,x2)2*x1.^2-3*x1*x2+2*x2.^2;
[x,y]=meshgrid(-5:0.01:5,-5:0.01:5);
z=f(x,y);
mesh(x,y,z)