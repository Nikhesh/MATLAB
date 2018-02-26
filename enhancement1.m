clc
clear all
close all
% im=imread('cameraman.tif');
x=wavread('voice.wav')
h=[0.5,-0.5];
x1=conv(x,h);
res=x+x1(1:length(x));
% imshow(im),figure,imshow(uint8(res))
soundsc(x),pause,soundsc(res)