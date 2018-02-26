clc
clear all
close all
%Define the impulse responses of the systems
h1=[0.5,0.5];  %LPF
h2=[0.5,-0.5]; %HPF
w=-pi:pi/10:pi;
H1=freqz(h1,1,w);
H2=freqz(h2,1,w);
plot(w,angle(H1),'r',w,angle(H2),'b')