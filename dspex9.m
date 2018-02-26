%To synthesis sound
clc
clear all
close all
fs=1000;
dur=5;
t=linspace(0,dur,fs*dur);
x1=sin(2*pi*40*t);
x2=sin(2*pi*45*t);
x3=sin(2*pi*50*t);
x4=sin(2*pi*55*t);
x5=sin(2*pi*60*t);
x6=sin(2*pi*75*t);
x=[x1,0,x2,0,x3,0,x4,0,x5,0,x6];
y=fliplr(x);
z=[x,y]
soundsc(z)