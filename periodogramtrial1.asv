clc
clear all
close all
%Step 1: Generation of signal
Fs=100;  %Sampling frequency
t=0:1/Fs:10;
f1=5;
f2=10;
x=sin(2*pi*f1*t)+sin(2*pi*f2*t);
w=randn(1,length(x));
x=x+w;
%Step 2: Plotting the spectrum
N=256;
f=Fs/2*linspace(0,1,N/2);
X=fft(x,N)/N;
plot(f,2*abs(X(1:length(f))))
%Step 3: Periodogram using formula 1
P1=(X.*conj(X))/N;
P1_dB=10*log10(P1);
figure,plot(f,P1_dB(1:length(f)))
%Step 4: Periodogram using ACF
r=xcorr(x,x);
P2=fft(r,N)/N;
P2_dB=10*log10(P2);
figure,plot(f,P2_dB(1:length(f)))
%Step 5: Periodogram using built-in fn
figure,periodogram(x,[],256,Fs)
%Step 6: Periodogram through Welch method
figure,pwelch(x,[],[],[],Fs)
%Step 7: Periodogram through Multitaper method
figure,pmtm(x,[],[],Fs)