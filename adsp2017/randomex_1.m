%To generate 1000 samples of zero mean,unit variance white noise
clc
clear all
close all
%Step 1: Generate the white noise
N=1000000; %Number of samples
x=randn(1,N);
%To compute the mean and variance
m=mean(x);
v=var(x);
%To find the ACF of white noise
[c,lag]=xcorr(x,100,'biased');
%To plot the PSD
PSD_x=fft(c);
% Fs=2;
f=[0:length(PSD_x)-1]/length(PSD_x);

%Plot the signal and the histogram
subplot(4,1,1),plot(x),
xlabel('Samples'),ylabel('Amplitude'),
title(['White noise with \mu=',num2str(m),'\sigma^2=' num2str(v)])
subplot(4,1,2),hist(x,100),xlabel('bins'),
ylabel('f_X(x)'),title('Histogram')
subplot(4,1,3),plot(lag,c),
subplot(4,1,4),plot(f,10*log10(PSD_x))
