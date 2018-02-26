%To understand FIR filter
clc
clear all
close all
%Step 1: To generate composite signal
t1=linspace(0,1,100);
t=linspace(0,1,300);
f1=5;
f2=0;
f3=15;
x1=sin(2*pi*f1*t1);
x2=sin(2*pi*f2*t1);
x3=sin(2*pi*f3*t1);
x=[x1,x2,x3];
%Filter design
fs=100;  %Sampling frequency
fn=fs/2;
fc=10;  %Cut-off frequency
w=fc/fn;
h=fir1(25,w,'high');  %Filter coefficient
%To obtain th output
y=filter(h,1,x);
%Plotting the result
subplot(2,1,1),plot(t,x),title('Input signal')
subplot(2,1,2),plot(t,y),title('Output signal')
