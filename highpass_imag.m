%Impact of low pass filter
clc
clear all
close all
%Reading the input image
im=imread('cameraman.tif');
h=[1 1 1; 1 1 1; 1 1 1];
im1=conv2(im,h,'same');
imshow(im),figure,imshow(uint8(im1))