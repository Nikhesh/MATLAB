%Filtering of the signal
clc
clear all
close all
%Step1: Generate multiple frequency component signal
t1=linspace(0,1,100);
t=linspace(0,1,300);
f1=1;
f2=0;
f3=10;
fc=5;
fs=100;
x1=square(2*pi*f1*t1);
% x2=square(2*pi*f2*t1);
x3=square(2*pi*f3*t1);
x=[x1,zeros(1,length(x1)),x3];
%Step 2 Define the Filter parameters
M=21;
w=2*(fc/fs);
%Step 3 Generate filter coefficient
h1=fir1(M,w,'low');
h2=butter(M,w);
%Step 4 To obtain the output
y1=conv(x,h1);
y2=conv(x,h2);
%Step 5 To plot the input and output signal
subplot(3,1,1),plot(t,x),axis([0 1 -2 2])
subplot(3,1,2),
plot(t,y1(1:length(t))),
subplot(3,1,3),
plot(t,y2(1:length(t)))
