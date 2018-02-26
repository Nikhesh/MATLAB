%Averaging filter analysis
clc
clear all
close all
[X,Y]=meshgrid(-pi:0.05:pi);
% Z=(1/9)*(1+2*cos(X)+2*cos(Y)+4*cos(X).*cos(Y));
Z=-8+2*cos(X)+2*cos(Y)+4*cos(X).*cos(Y);
surf(X,Y,Z),axis([-4 4, -4 4, -1 1])