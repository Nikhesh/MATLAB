clc
clear all
close all
load chirp
x1=interp(y,2);
x2=decimate(x1,2);
soundsc(y),pause,soundsc(x2)