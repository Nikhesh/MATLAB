%Generation of sine wave
clc
close all
clear all
t=linspace(0,1,100)
a=5
f=10
x=a*sin(2*pi*f*t)
subplot(2,1,1) 
xlabel('frequency'),ylabel('amplitude'),title('Sinewave ')
plot(t,x)
N=256
fs=100
f=fs/2*linspace(0,1,N/2)
x=fft(x,N)/N
subplot(2,1,2)
plot(f,abs(x(1:length(f))))
xlabel('time'),ylabel('amplitude'),title('Spectrum')