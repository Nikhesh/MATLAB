%To generate 10 Hz sinusoidal signal
clc
clear all
close all
t=0:0.01:4.03; %time vector
f=10; %frequency
t1=0:0.01:1;
x1=sin(2*pi*5*t1);
x2=zeros(1,length(x1));
x3=sin(2*pi*f*t1);
x4=x2;
x=[x3,x2,x1,x4];
l=input('Enter the number of points in fft:');
nfft=2^l;
fs=100;  %Sampling frequency
f=fs/2*linspace(0,1,nfft/2); %frequency axis
X=fft(x,nfft)/nfft;
%filtering of the signal
order=102;
fc=fs/2;
cutoff_freq=10/fc;
h=fir1(order,cutoff_freq,'high');
%Output
y=conv(x,h);
plot(t,y(1:length(t)))
% subplot(2,1,1),plot(t,x),axis([0 4 -1 1])
% subplot(2,1,2),plot(f,2*abs(X(1:length(f))))


