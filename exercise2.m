clc
clear all
close all
%Step 1: Generation of sine wave
t1=linspace(0,1,1000);
x=sin(2*pi*5*t1);
%Step 2: To convert sine to sqauare
y=(x>=0)-(x<0);
%Step 3: Differentiate the square
z=diff(y);
z=[z,0];
%Step 4: Add sinewave with spikes
z1=x+z;
subplot(2,1,1),plot(t1,x),
subplot(2,1,2),plot(t1,z1),