%To generate sinusoidal signal
clc
clear all
close all
%Specify the parameters of the sine wave
t=linspace(0,1,100)
A=1;
f=5;
phi=0;
x=A*sin(2*pi*f*t+phi);
plot(t,x),xlabel('t'),ylabel('Amplitude'),title(['Sinusoidal signal' ' A=',num2str(A),'V',',f=',num2str(f),'Hz',',\phi=',num2str(phi)]);