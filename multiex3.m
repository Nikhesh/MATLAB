%CSFT of f(x,y)=2cos(2*pi*3y)
clc
clear all
close all
%Step 1: Generate f(x,y)
[x,y]=meshgrid(-10:1/10:10,-10:1/10:10);
f=2*cos(2*pi*3*x);
%Step 2: Spectrum of f(x,y)
F=fftshift(fft2(f));
%Step 3 Plotting the signal and spectra
imagesc(f),figure,imagesc(abs(F))