%To obtain the spectrum of the input signal
clc
clear all
close all
%Step1: To define the signal
t=linspace(0,1,100); %Time vector
f1=10;             %Frequency of the signal
x=sawtooth(2*pi*f1*t);
% w=rand(1,length(x1)); 
% x=x1+w%Signal
%Step2: To obtain the spectrum
N=1024;  % Number of points in FFT
fs=100;  %Sampling frequency
f=fs/2*linspace(0,1,N/2); %Defing the frequency axis
X=fft(x,N);
%Step 3: To plot the signal and spectrum
subplot(2,1,1),plot(t,x),
xlabel('t'),ylabel('Amplitude'),title('Signal')
subplot(2,1,2),plot(f,abs(X(1:length(f))))
xlabel('f'),ylabel('Amplitude'),title('Spectrum')