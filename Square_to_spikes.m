clc
clear all
close all
%step1:To generate square wave
t=linspace(0,1,100);
t1=linspace(0,1,99);
x=square(2*pi*5*t);
%step2:Differentiate square wave
y=diff(x);
%plot the results
subplot(2,1,1),plot(t,x),axis([0 1 -2 2]),xlabel('t'),ylabel('Amplitude'),title('Square Wave');
subplot(2,1,2);plot(t1,y),xlabel('t'),ylabel('Amplitude'),title('Spikes Output');