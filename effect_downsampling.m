clc
clear all
close all
 load chirp
% y=wavread('voice.wav')
N=length(y);
x=zeros(1,length(N));
x(1:2:N)=y(1:2:N);
soundsc(y),pause,soundsc(x)