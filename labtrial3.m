%To know the importance of phase
clc
clear all
close all
t=0:0.01:1;
s1=sin(2*pi*5*t);
s2=cos(2*pi*5*t);
S1=fft(s1,length(s1));
S2=fft(s2,length(s2));
mag1=abs(S1);
ph1=angle(S1);
mag2=abs(S2);
ph2=angle(S2);
r1=ifft(mag1.*exp(i*ph2));
r2=ifft(mag2.*exp(i*ph1));
subplot(2,2,1),plot(t,s1),
subplot(2,2,2),plot(t,s2),
subplot(2,2,3),plot(t,r1),axis([0 1 -1 1])
subplot(2,2,4),plot(t,r2),axis([0 1 -1 1])

