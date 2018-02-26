clc;
clear all;
close all;
fs=1000;
t=-0.5:1/fs:0.5;
a=rectpuls(t,0.5);
y=fftshift(fft(a)); 
N=length(y);         %to take the frquecny axis of the hoarmonics.
n=-(N-1)/2:(N-1)/2;  %divide the frequency compone
f=sqrt(y.*conj(y)); % to take the amplitude of each hoarmony.  
plot(n,f);  
% plot(t,y),axis([-0.5 0.5 -1 1]),