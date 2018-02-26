%Mexican hat wavelet
clc
clear all
close all
t=-5:0.01:5; %time axis
x=(1-t.^2).*exp(-t.^2/2);
plot(t,x),
xlabel('t'),ylabel('Amplitude'),
title('Mexican hat wavelet')
