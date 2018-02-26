%To generate single tone sound
clc
clear all
close all
t=linspace(0,1,8000);
f=100;
x=sin(2*pi*f*t);
soundsc(x)
