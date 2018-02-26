%To visualize the PSD
clc
clear all
close all
%Autocorrelation function
tau=-10:10;
alpha=10;
acf=exp(-alpha.*abs(tau));
%Power Spectral Density
w=linspace(-10,10);
% alpha=10;
num=2*alpha;
b=[1 0 alpha^2];
den=polyval(b,w);
S=num./den;
subplot(2,1,1),plot(tau,acf),xlabel('\tau'),ylabel('R_x_x(\tau)')
subplot(2,1,2),plot(w,S),xlabel('\omega'),ylabel('S_x_x(\omega)')