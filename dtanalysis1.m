%Analysis of first order DT system
%Difference eqn: y[n]=0.5y[n-1]+x[n]
clc
clear all
close all
%Define the system parameters
num=[0.25 -0.25 0.25 -0.25];
% num=(-1).^num1.*(-num1);
den=[1];
%To obtain the frequency response of the system
w=-pi:0.01:pi;
[H]=freqz(num,den,w);
%Generation of the input
t=linspace(0,1,100);
f=5;
x=square(2*pi*f*t);
%To get the output of the system
y=filter(num,den,x);
% soundsc(x),pause,soundsc(y)
subplot(3,2,1),zplane(num,den),title('Pole zero plot')
subplot(3,2,2),impz(num,den),
subplot(3,2,3),plot(w,abs(H)),
xlabel('\omega'),ylabel('|H(e^j^w)|'),title('Magnitude response')
subplot(3,2,4),plot(w,angle(H)),
subplot(3,2,5),plot(t,x),axis([0 1 -2 2]),
xlabel('t'),ylabel('Amplitude'),title('Input signal'),
subplot(3,2,6),plot(t,y),axis([0 1 -2 2]),
xlabel('t'),ylabel('Amplitude'),title('Output signal'),






