%Impact of MA filter order
clc
clear all
close all
im=imread('testim1.tif');
M1=3;
h1=1/M1*ones(1,M1);
M2=107;
h2=1/M2*ones(1,M2);
im1=conv2(im,h1,'same');
im2=conv2(im,h2,'same');
imshow(im),figure,imshow(uint8(im1)),figure,imshow(uint8(im2))