%To generate 1Hz sine wave
clc
clear all
close all
 t=linspace(0,1,101); %time vector
% t=0:0.01:.99;
A=1;%Amplitude of the signal
f=1; %Frequency of the signal
x=A*cos(2*pi*f*t);
plot(t,x),
xlabel('t'),ylabel('Amplitude'),
title('1 Hz sine wave')