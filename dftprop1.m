%Multiplication by complex exponential
clc
clear all
close all
t=linspace(0,1,100);
x=sin(2*pi*10*t);
N=length(x);
l=18;
y=zeros(1,N);
for i=1:N
    y(i)=exp((j*2*pi/N)*l*(i))*x(i);
end
%To plot the spectrum
fs=100;
N=256;
f=fs/2*linspace(0,1,N/2);
X=fft(x,N)/N;
Y=fft(y,N)/N;
subplot(2,1,1),plot(f,2*abs(X(1:length(f)))),
subplot(2,1,2),plot(f,2*abs(Y(1:length(f))))

