clc
clear all
close all
im=imread('cameraman.tif');
h=uint8(255*randn(256));
im1=double(im)+double(h);
im2=ordfilt2(im1,1,ones(3,3))
imshow(im),figure,imshow(uint8(im1)),figure,imshow(uint8(im2))