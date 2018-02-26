%To generate a sound
clc
clear all
close all
t=linspace(0,5,5000);
f1=40;
f2=45;
f3=50;
f4=55;
f5=65
f6=70;
f7=80
x1=sin(2*pi*f1*t);
x2=sin(2*pi*f2*t);
x3=sin(2*pi*f3*t);
x4=sin(2*pi*f4*t);
x5=sin(2*pi*f5*t);
x6=sin(2*pi*f6*t);
x7=sin(2*pi*f7*t);
% x8=sin(2*pi*f8*t);
x=[x1,0,0,x2,0,0,x3,0,0,x4,0,0,x5,0,0,x6,0,0,x7];
y=x(end:-1:1);
z=[x,y];
soundsc(z)