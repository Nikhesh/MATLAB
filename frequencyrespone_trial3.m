%To obtain the frequency response given the impulse response
clc
clear all
close all
L=20;
w0=pi/2;
n=-10:10;
h=1/L*cos(w0*n);  %Impulse response is defined
fvtool(h)
