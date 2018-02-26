%To design a notch filter based on pole-zero location
clc
clear all
close all
%Define the system
r=0.1;
fn=5;
fs=100;
num=[1,-2*cos(2*pi*(fn/fs)),1];
den=[1,-2*r*cos(2*pi*(fn/fs)),r*r];
%Define the input signal
t1=linspace(0,1,100);
t=linspace(0,1,300);
f1=5;
f2=10;
x1=sin(2*pi*f1*t1);
x2=sin(2*pi*f2*t1);
x=[x1,zeros(1,length(x1)),x2];
y=filter(num,den,x);  %To obtain the output signal
subplot(2,1,1),plot(t,x),
subplot(2,1,2),plot(t,y)
%To observe the frequency response of the system
% freqz(num,den,256,fs),figure,zplane(num,den)