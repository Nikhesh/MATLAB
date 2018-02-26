%To generate sinusoidal signal
clc
clear all
close all
%Specify the parameters of the sine wave
A=1;%Amplitude
f=5;%Frequency
ph=0;%Phase
%To genertae Time vector
t=linspace(0,1,1000)
x=A*sin(2*pi*f*t+ph);
%Conversion of sine to square wave
y=(x>=0);
%Plotting the result
subplot(2,1,1),plot(t,x),xlabel('t'),ylabel('Amplitude'),title(['Sinusoidal signal' ' A=',num2str(A),'V',',f=',num2str(f),'Hz',',\phi=',num2str(ph)]);
subplot(2,1,2),plot(t,y),axis([0 1 -2 2]),xlabel('t'),ylabel('Amplitude'),title(['Square signal' ' A=',num2str(A),'V',',f=',num2str(f),'Hz',',\phi=',num2str(ph                  )]);