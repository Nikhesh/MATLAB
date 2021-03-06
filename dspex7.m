%Passing of sine wave to a comparator
clc
clear all
close all
%Generation of sine wave
t=linspace(0,1,1000);
t1=linspace(0,1,999);
f=5;
x=sin(2*pi*f*t);
y=(x>=0)-(x<=0);  %Action of comparator
y1=diff(y);
z=y1+x(1:length(y1));
 plot(t1,z)
% subplot(2,1,1),plot(t,x),
% xlabel('t'),ylabel('Amplitude'),title('Sinewave')
% subplot(2,1,2),plot(t,y),axis([0 1 -2 2])
% xlabel('t'),ylabel('Amplitude'),title('Square wave')