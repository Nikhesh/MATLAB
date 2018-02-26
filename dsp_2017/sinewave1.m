%Example 1: Generation of sine wave
clc
clear all
close all
t=linspace(0,1,100) % time vector
A=1;
f=5;
phi=0;
x=A*square(2*pi*f*t+phi);
%Plot the sine wave
plot(t,x),xlabel('t'),ylabel('Amplitude')
axis([ 0 1 -2 2]),
title(['Square wave with frequency',num2str(f) 'Hz']),


