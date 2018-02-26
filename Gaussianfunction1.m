%To plot the Gaussian function
clc
clear all
close all
t=-5:0.01:5;
mu=0;
sigma=1;
k=1/sqrt(2*pi*sigma);
x=k.*exp(-(t-mu).^2/2*sigma*sigma);
plot(t,x)
