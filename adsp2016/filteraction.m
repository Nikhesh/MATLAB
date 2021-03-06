%Action of LPF and HPF on a square wave
clc
clear all
close all
%Step1: To generate a square wave of 5 Hz frequency
t=linspace(0,1,1000);
f=5;
x=square(2*pi*f*t);
%Step 2: Define the filter coefficients
h1=[0.5,0.5];
h2=[0.5,-0.5];
%Step 3: To obtain the output signals
y1=conv(x,h1);
y2=conv(x,h2);
%Step 4: Plotting  the input and output signals
subplot(3,1,1),plot(t,x),axis([0 1 -2 2])
xlabel('t'),ylabel('Amplitude'),title('Input signal'),
subplot(3,1,2),plot(t,y1(1:length(t))),axis([0 1 -2 2]),
xlabel('t'),ylabel('Amplitude'),title('Integrated signal'),
subplot(3,1,3),plot(t,y2(1:length(t))),axis([0 1 -2 2]),
xlabel('t'),ylabel('Amplitude'),title('Differentiated signal'),

