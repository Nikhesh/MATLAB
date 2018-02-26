clc
clear all
close all
im=imread('cameraman.tif');
h=[-1 -1 0; -1 3 0; 0 0 0];
im1=conv2(im,h,'same');
imshow(im),figure,imshow(mat2gray(im1))