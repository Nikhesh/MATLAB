%Cascading of upsampling by a factor of L followed by
%downsampling by a factor of L is equivalent to identity operation
clc
clear all
close all
im=imread('cameraman.tif');
im1=imdownsample(im);
im2=imupsample(im1);
imshow(im),figure,imshow(mat2gray(im2))