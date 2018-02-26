%CSFT of a rectangular function
clc
clear all
close all
%To generate 2D rectangular function
rec=ones(256);
rec(110:150,110:150)=0;
%To obtain the FT
REC=fftshift((rec));
%Step1: Read an image
im=imread('rice.png');
IM=fft2(im);
Y=IM.*REC;
y=ifft2(Y);
imshow(im),figure,imshow((y))

% imshow(rec),figure,imshow((REC),[])
