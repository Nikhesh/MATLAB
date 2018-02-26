%Verify Wiener Khintchine relation
clc
clear all
close all
%Step 1: To generate a signal
t=linspace(0,1,100);
f1=10;
x=sin(2*pi*f1*t);
%Step2: To obtain the spectrum of the signal
N=1024; %Number of points in FFT
fs=100; %Sampling frequency
f=fs/2*linspace(0,1,N/2);
X=fft(x,N);
P=(X.*conj(X))/N;
%Step 3: Plot the PSD
 subplot(3,1,1),plot(f,10*log10(P(1:length(f))))
%Step 4: FT of ACF
y=xcorr(x,x);
Y=fft(y,N)/N;
 subplot(3,1,2),plot(f,10*log10(Y(1:length(f))))
subplot(3,1,3),periodogram(x,[],'onesided',256,fs)
