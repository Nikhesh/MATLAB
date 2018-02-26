%Energy compaction property
clc
clear all
close all
%Step 1: Signal generation
t=linspace(0,1,100);
x=sin(2*pi*5*t);
%Step 2: FFT of the signal
X=fft(x);
%Step 3: Zeroing of coefficients
X=[X(50:end),X(1:49)];
%Step 4: Taking Inverse FT
y=ifft(X);
%Step 5: Plotting the input and output
subplot(2,1,1),plot(t,x),axis([0 1 -2 2]),
title('Input signal')
subplot(2,1,2),plot(t,y),axis([0 1 -2 2]),
title('Output signal')