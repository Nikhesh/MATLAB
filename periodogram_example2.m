%To obtain periodogram of the signal
clc
clear all
close all
%Step 1: Generate the signal
f1=5;
f2=10;
Fs=100;
t=0:1/Fs:10;
x=sin(2*pi*f1*t)+sin(2*pi*f2*t);
% n=randn(1,length(x));
% x1=x+n;
%Step 2: Computation of periodogram
% Rxx=xcorr(x,x); %Autocorrelation
Rxx=conv(x,fliplr(x));
nfft=256;
f=Fs/2*linspace(0,1,nfft/2);%Frequency axis
Sxx=fft(Rxx,nfft);
plot(f,abs(Sxx(1:length(f))))

