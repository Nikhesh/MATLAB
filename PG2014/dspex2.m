% To generate square wave
clc
clear all
close all
t=linspace(0,1,101); %time vector
t1=linspace(0,1,100);
A=1;%Amplitude of the signal
f=10; %Frequency of the signal
x=A*square(2*pi*f*t);
y=diff(x);
plot(t,x),figure,plot(t1,y)
% xlabel('t'),ylabel('Amplitude'),
% title('1 Hz sine wave'),
% axis([0 1 -2 2])