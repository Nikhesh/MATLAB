%To illustrate the concept of filtering
clc
clear all
close all
%Generate the input signal
t=linspace(0,1,1000);
x=sawtooth(2*pi*5*t);
%Define the impulse response
h1=[0.707,0.707];
h2=[-0.707,0.707];
%To obtain the output signal
y1=conv(x,h1);
y2=conv(x,h2);
%Plot the three signals
subplot(3,1,1),plot(t,x),axis([0 1 -2 2])
subplot(3,1,2),plot(t,y1(1:length(t))),axis([0 1 -2 2])
subplot(3,1,3),plot(t,y2(1:length(t))),axis([0 1 -2 2])