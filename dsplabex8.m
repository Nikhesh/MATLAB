%LPF of chirp signal
clc
clear all
close all
load chirp
h=fir1(11,0.5);
z=conv(y,h);
sound(y),pause,sound(z)
