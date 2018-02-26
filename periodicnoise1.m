clc
clear all
close all
im=imread('cameraman.tif');
[m,n]=size(im);
%Sinusoidal grating pattern
[x,y]=meshgrid(1:m,1:n);
f=sin(x/2+y/2);
im1=double(im).*double(f);
IM=fftshift(fft2(im));
IM1=fftshift(fft2(im1));
 imshow(abs(IM),[]),figure,imshow(abs(IM1),[])
% imshow(im),figure, imshow(uint8(im1))
