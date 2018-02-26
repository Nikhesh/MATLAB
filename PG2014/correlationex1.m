%Autocorrelation of the signal
clc
clear all
close all
%Generation of the signal
t=linspace(0,1,100);
x=square(2*pi*5*t);
y=[zeros(1,50),x];%y is a delayed version of x
[a,b]=xcorr(x,x);
[a1,b1]=xcorr(x,y);
subplot(2,2,1),plot(t,x),axis([0 1 -2 2])
xlabel('t'),ylabel('Amplitude'),title('x(t)')
subplot(2,2,2),plot(t,y(1:length(t))),axis([0 1 -2 2])
xlabel('t'),ylabel('Amplitude'),title('y(t)')
subplot(2,2,3),plot(b,a),
xlabel('lag'),ylabel('Amplitude'),title('Autocorrelation')
subplot(2,2,4),plot(b1,a1),
xlabel('lag'),ylabel('Amplitude'),title('Crosscorrelation')