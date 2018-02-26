clc
clear all
close all
h1=[1,0.5];
h2=[0.5,1];
H1=fft(h1);
H2=fft(h2);
M1=abs(H1);
A1=angle(H1);
M2=abs(H2);
A2=angle(H2);
subplot(2,2,1),plot(M1),title('Magnitude of system1')
subplot(2,2,2),plot(A1),title('Phase of system 1')
subplot(2,2,3),plot(M2),title('Magnitude of system2')
subplot(2,2,4),plot(A2),title('Phase of system 2')