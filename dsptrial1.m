clc
clear all
close all
t1=linspace(0,1,100);
t=linspace(0,1,300);
f1=5;
f2=0;
f3=15;
x1=sin(2*pi*f1*t1);
x2=sin(2*pi*f2*t1);
x3=sin(2*pi*f3*t1);
x=[x1,x2,x3];
x(150)=1;
x(160)=-1;
y=medfilt1(x);
subplot(2,1,1),plot(t,x)
subplot(2,1,2),plot(t,y)

