%Two dimensional Mexican hat wavelet
clc
clear all
close all
[x,y]=meshgrid(-8:0.5:8);
r=sqrt(x.^2+y.^2);
z=sin(r)./r;
surfc(z)