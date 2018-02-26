%Example 1: Generation of sine wave
clc
clear all
close all
t=linspace(0,1,100) %Time vector
A=input('Enter the amplitude: ');
f=input('Enter the frequency: ');
phi=input('Enter the phase: ');
x=A*sin(2*pi*f*t+phi);
%Plot sine wave
plot(t,x),xlabel('Time'),ylabel('Amplitude');
title('Sine wave')