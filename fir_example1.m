%FIR filter using window
clc
clear all
close all
%Step 1: Generation of input signal
t=linspace(0,1,300);
t1=linspace(0,1,100);
f1=1;
f2=5;
f3=10;
x1=sin(2*pi*f1*t1);
x2=sin(2*pi*f2*t1);
x3=sin(2*pi*f3*t1);
x=[x1,x2,x3];
% plot(t,x)
%FIR filter
M=32;    %Order of the filter
fc1=1.5;   %Cutoff frequency
fc2=8;
fs=100;  %Sampling frequency
w1=2*(fc1/fs);
w2=2*(fc2/fs);
w=[w1 w2];
h=fir1(M,w,'stop',rectwin(M+1));
%Output of FIR filter
y=filter(h,1,x);
%Plotting of the results
subplot(2,1,1),plot(t,x),
subplot(2,1,2),plot(t,y)
% fvtool(h)
