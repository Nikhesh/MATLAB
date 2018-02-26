%To generate 2D comb function
clc
clear all
close all
im=imread('cameraman.tif')
cmb=zeros(256);
[m,n]=size(cmb);
for i=1:8:m
    for j=1:8:n
        cmb(i,j)=1;
    end
end
fs=double(im).*double(cmb);
%CMB=fftshift(fft2(cmb));
%imshow(cmb),figure,imshow(abs(CMB))
imshow(uint8(fs))

