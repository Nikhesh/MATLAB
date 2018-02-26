clc;
clear all;
close all;
t=linspace(0,1,100);
x=sin(2*pi*5*t);
y=abs(x);
x1=0.5.*(x+y);
% plot(t,x1),axis([0 1 -2 2])
x1(x1>0.5)=0.5
x1(x1<-0.5)=-0.5
x2=x1
plot(t,x2),axis([0 1 -2 2])