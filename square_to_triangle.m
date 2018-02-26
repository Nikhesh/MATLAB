clc
clear all
close all
%step1:To generate square wave
t=linspace(0,1,100);
x=square(2*pi*5*t);
%step2:integrate square wave

y=cumsum(x);
%plot the results
subplot(2,1,1),plot(t,x),axis([0 1 -2 2]),xlabel('t'),ylabel('Amplitude'),title('Square Wave');
subplot(2,1,2);plot(t,y),xlabel('t'),ylabel('Amplitude'),title('Triangular Wave');