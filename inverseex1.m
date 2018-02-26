clc
clear all
close all
%Step 1: Generation of sinusoidal signal
t=linspace(0,1,100);
x=sin(2*pi*10*t);
N=length(x);
%Step 2: Obtain the spectrum
X=fft(x);
%Step 3: Conjugate of X
X1=conj(X);
X2=fft(X1);
X3=conj(X2);
y=X3/N;
subplot(2,1,1),plot(t,x),title('Input signal')
subplot(2,1,2),plot(t,y),title('Output signal')