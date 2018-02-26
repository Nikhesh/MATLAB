clc
clear all
close all
im=imread('rice.png');
IM=fft2(im);
mag=abs(IM);
ph=angle(IM);
% ph=0;
r_im=ifft2(mag.*exp(i.*ph));
imshow(im),figure,imshow(uint8(r_im))