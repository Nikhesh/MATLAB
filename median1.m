%Understanding median filter
clc
clear all
close all
%sine wave generation
t=linspace(0,1,100);
x=sin(2*pi*5*t);
%plot(t,x)
%introduce spike
x(1:40:end)=2;
%to elimintae spike
y=medfilt1(x);
subplot(2,1,1),plot(t,x),title('Input signal')
subplot(2,1,2),plot(t,y),title('output signal')