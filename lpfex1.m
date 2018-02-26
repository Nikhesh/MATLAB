clc
clear all
close all
im=imread('rice.png');
%mask generation
m=ones(256);
m(108:142,108:142)=0;
%Fourier domain
im_sp=fft2(im);
m_sp=fftshift(m);
modi_sp=im_sp.*m_sp;
y=ifft2(modi_sp);
imshow(im),figure,imshow((y))
% imshow(m),figure,imshow(m_sp)