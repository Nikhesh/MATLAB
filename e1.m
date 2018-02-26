% Moving average filter
clc
clear all
close all
%Signal generation
t=0:0.01:1;
f=5;
x=square(2*pi*f*t); %original signal
%Impulse response
h=fir1(10,0.5,'high'); %HPF
% Output
y=conv(x,h);
subplot(2,1,1),plot(t,x),
subplot(2,1,2),plot(t,y(1:length(t)))