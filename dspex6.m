%To rectify the sine wave
clc
clear all
close all
t=linspace(0,1,100);
f=5;
x=sin(2*pi*f*t); %Input signal
%Half wave rectified output
y1=0.5*(x+abs(x));  %HWR
y2=abs(x);          %FWR
%Plotting of the result
subplot(3,1,1),plot(t,x),
xlabel('t'),ylabel('Amplitude'),title('Input signal')
subplot(3,1,2),plot(t,y1),
xlabel('t'),ylabel('Amplitude'),title('HWR output')
subplot(3,1,3),plot(t,y2),
xlabel('t'),ylabel('Amplitude'),title('FWR output')
