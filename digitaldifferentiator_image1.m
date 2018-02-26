clc
clear all
close all
N=5;
for i=1:floor(N/2)
    h(i)=((-1).^i)/i;
end
h=[-fliplr(h),0,h];
im=imread('lena.tif');
im1=conv2(im,h,'same');
im2=double(im)+double(im1);
imshow(im),figure,imshow(im1),figure,imshow(uint8(im2))