%Manipulation of the spectrum
clc
clear all
close all
%Step 1: Generation of square wave
t=linspace(0,1,100);
f=5;
x=square(2*pi*f*t);
%Step2: Take the FT of square wave
X=fft(x);
%Step 3: Manpulation of X
X(1:50)=0;
%Step 4: Take Inverse FT
y=ifft(X);
%Display the input and output signal
subplot(2,1,1),plot(t,x),axis([0 1 -2 2])
subplot(2,1,2),plot(t,y),axis([0 1 -2 2])
