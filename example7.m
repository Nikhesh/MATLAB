%Visualize the blurring effect
clc
clear all
close all
im=imread('lena.tif');
h=1/15*ones(15);
im1=conv2(im,h,'same');
im2=double(im)-double(im1);
im3=double(im)+double(im2);
imshow(im),figure,imshow(mat2gray(im1)),figure,imshow(mat2gray(im3))