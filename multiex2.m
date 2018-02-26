%Increase the value of each pixel
clc
clear all
close all
im=imread('rice.png');
im1=double(im)+100;
imshow(im),figure,imshow(uint8(im1))