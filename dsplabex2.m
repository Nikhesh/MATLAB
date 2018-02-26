%To differentiate and integrate square wave
clc
clear all
close all
A=1;
f=5;
t=linspace(0,1,100);
t1=linspace(0,1,99);
x=square(2*pi*f*t);
y1=diff(x);
y2=cumsum(x);
subplot(3,1,1),plot(t,x),axis([0 1 -2 2])
xlabel('time'),ylabel('Amplitude'),title('Square wave')
subplot(3,1,2),plot(t1,y1),axis([0 1 -2 2])
subplot(3,1,3),plot(t,y2)