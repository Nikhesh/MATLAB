%Generation of halfwave and fullwave rectifier
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
%To obtain Half wave rectifier output
y1=0.5*(x+abs(x));
%To obtain Full wave rectifier output
y2=abs(x);
%plotting the result
subplot(3,1,1),plot(t,x),xlabel('t'),ylabel('Amplitude'),title(['Sinusoidal signal' ' A=',num2str(A),'V',',f=',num2str(f),'Hz',',\phi=',num2str(ph)]);
subplot(3,1,2),plot(t,y1),xlabel('t'),ylabel('Amplitude'),title(['Half wave rectified signal' ' A=',num2str(A),'V',',f=',num2str(f),'Hz',',\phi=',num2str(ph)]);
subplot(3,1,3),plot(t,y2),xlabel('t'),ylabel('Amplitude'),title(['Full wave rectified signal' ' A=',num2str(A),'V',',f=',num2str(f),'Hz',',\phi=',num2str(ph)]);