%Example 1: Generation of sine wave
clc
clear all
close all
t=linspace(0,1,100) %Time vector
A=1;
f=5;
phi=0;
x=A*square(2*pi*f*t+phi);
%Plot sine wave
plot(t,x),xlabel('Time'),ylabel('Amplitude '),
axis([0 1 -2 2]);
title('Square Wave')