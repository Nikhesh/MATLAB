%To generate sinusoidal signal
clc
clear all
close all
%Specify the parameters of sine wave
A=1;  %Amplitude
f=5;  %Frequency
ph=0; %Phase
%Generate the time vector
t=linspace(0,1,100);
x=A*sin(2*pi*f*t+ph);
plot(t,x),xlabel('t'),ylabel('Amplitude')
title(['A=',num2str(A),'V',' f=',num2str(f),'Hz',' \phi=',num2str(ph)])