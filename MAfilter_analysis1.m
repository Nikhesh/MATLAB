%Passing a square wave through MA filters
clc
clear all
close all
%Generate a square of fundamental frequency 5 Hz
t=linspace(0,1,100);
x=square(2*pi*5*t);
%Define three MA filters
M1=3;
M2=5;
M3=11;
%Impulse response of the MA filters
h1=1/M1*ones(1,M1);
h2=1/M2*ones(1,M2);
h3=1/M3*ones(1,M3);
%Output of the 3 MA filters
y1=filter(h1,1,x);
y2=filter(h2,1,x);
y3=filter(h3,1,x);
%Plotting of the results
subplot(3,2,1), plot(t,x),axis([0 1 -2 2])
xlabel('t'),ylabel('Amplitude'),title('Input signal')
subplot(3,2,2), plot(t,y1),axis([0 1 -2 2])
xlabel('t'),ylabel('Amplitude'),title('3point MA filter output')
subplot(3,2,3), plot(t,x),axis([0 1 -2 2])
xlabel('t'),ylabel('Amplitude'),title('Input signal')
subplot(3,2,4), plot(t,y2),axis([0 1 -2 2])
xlabel('t'),ylabel('Amplitude'),title('5point MA filter output')
subplot(3,2,5), plot(t,x),axis([0 1 -2 2])
xlabel('t'),ylabel('Amplitude'),title('Input signal')
subplot(3,2,6), plot(t,y3),axis([0 1 -2 2])
xlabel('t'),ylabel('Amplitude'),title('9point MA filter output')
