%Example 1:Genertaion of sine wave
clc
clear all
close all
t=linspace(0,1,1000) %time Vector
% A=input('Enter The amplitude:');
% f=input('Enter the frequency:');
% phi=input('Enter the phase:');
A=1;
f=5;
phi=0;
x=A*square(2*pi*f*t+phi);
plot(t,x),xlabel('Time'),ylabel(['Amplitude',num2str(A)]);
title(['frequency',num2str(f) 'Hz'])
axis([0 1 -2 2])
