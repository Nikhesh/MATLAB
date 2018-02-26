%Appending of sine waves
clc
clear all
close all
f1=1;
f2=0;
f3=10;
t1=linspace(0,1,100);
x1=sin(2*pi*f1*t1);
x2=sin(2*pi*f2*t1);
x3=sin(2*pi*f3*t1);
%Appending of sine waves
x=[x1,x2,x3]; %Appended sine wave
t=linspace(0,1,300);
plot(t,x),xlabel('t'),ylabel('Amplitude'),
title('Appended sine wave')

