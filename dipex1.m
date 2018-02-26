%To generate 2D unit sample signal
clc
clear all
close all
h=zeros(256);
h(128,128)=1;
%Define the input image
x=imread('cameraman.tif');
%To perform convolution
y=conv2(x,h,'same');
imshow(x),figure,imshow(uint8(y))