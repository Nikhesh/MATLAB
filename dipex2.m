%To read a colour image
clc
clear all
close all
im=imread('peppers.png');
im1(:,:,1)=im(:,:,2);
im1(:,:,2)=im(:,:,1);
im1(:,:,3)=im(:,:,3);
imshow(im),figure,imshow(im1)