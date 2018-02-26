clc
clear all
close all
h1=fir1(101,0.5);%LPF
p=length(h1);
for i=1:p
    h2(i)=(-1).^i*h1(i);
end
im=imread('testim1.tif');
im1=conv2(im,h1,'same');
im2=conv2(im,h2,'same');
imshow(im),figure,imshow(im1),figure,imshow(im2)