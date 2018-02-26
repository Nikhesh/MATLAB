%Rectangular and sinc functions are dual functions
clc
clear all
close all
%Rectangular function
rect=zeros(101);
rect(45:55,45:55)=ones(11);
%Spectrum of rectangular function
rect_shift=fftshift(rect);
r1=fft2(rect_shift);
r2=fftshift(r1);
subplot(2,1,1),surf(rect),
subplot(2,1,2),surf(abs(r2))