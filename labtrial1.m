%To plot the spectrum of sine wave
clc
clear all
close all
%Generation of sine wave
t=linspace(0,1,101);     % time vector
f=5;            %frequency
A=1;            %Amplitude
x=A*sin(2*pi*f*t);  %input signal
%To obtain the spectrum
fs=100;  %Sampling frequency
nfft=512; %No. of point in DFT
X=fft(x,nfft)/nfft; %normalized spectrum
f=fs/2*linspace(0,1,nfft/2); % frequency axis
subplot(2,1,1),plot(t,x),xlabel('time'),ylabel('Amplitude'),title('Input signal')
subplot(2,1,2),plot(f,2*abs(X(1:length(f))))


