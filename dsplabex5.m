%Sine wave to square wave converter
clc
clear all
close all
%Generate the sine wave
A=1;
f=5;
ph=0;
t=linspace(0,1,100);
x=sin(2*pi*f*t+ph);
y=(x>0);
subplot(2,1,1),plot(t,x),
subplot(2,1,2),plot(t,y),axis([0 1 -2 2])