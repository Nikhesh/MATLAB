%Fourier transform of a vertical line
clc
clear all
close all
%Horizontal line
im=zeros(256);
im(128,:)=255;
IM=log(1+fftshift(fft2(abs(im))));
imshow(im),figure,imshow(IM)