%Autocorrelation of the signal
clc
clear all
close all
%Generation of the signal
t=linspace(0,1,100);
x=square(2*pi*5*t);
[a,b]=xcorr(x,x);
subplot(2,1,1),plot(t,x),axis([0 1 -2 2]
xlabel('t'),ylabel('Amplitude'),title('Square wave')
subplot(2,1,2),plot(b,a),
xlabel('lag'),ylabel('Amplitude'),title('Autocorrelation')