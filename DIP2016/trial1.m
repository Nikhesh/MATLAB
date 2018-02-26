%Histogram of different images
clc
clear all
close all
im=150*uint8(ones(256));
im(:,1:128)=100;
im1=150*uint8(ones(256));
im1(1:128,:)=100;
im3(1:128,1:128)=100;
im3(128:256,128:256)=100;
im3(1:128,128:256)=150;
im3(128:256,1:128)=150;
imshow(uint8(im3))
subplot(3,2,1),imshow(im),
subplot(3,2,2),imhist(im)
subplot(3,2,3),imshow(im1),
subplot(3,2,4),imhist(im1)
subplot(3,2,5),imshow(uint8(im3))
subplot(3,2,6),imhist(uint8(im3))