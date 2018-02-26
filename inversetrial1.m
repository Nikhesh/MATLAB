clc
clear all
close all
im=imread('lena.tif');
[m,n]=size(im);
IM1=fft2(im);
% IM2=conj(IM1);
IM3=fft2(IM1);
IM4=conj(IM3);
im1=IM4/(m*n);
P1=fft2(im1);
P2=fft2(P1);
r1=P2/(m*n);
imshow(im),figure,imshow(uint8(im1)),figure,imshow(uint8(r1))