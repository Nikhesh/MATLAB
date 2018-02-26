%To perform thresholding
clc
clear all
close all
im=imread('cameraman.tif');
th=graythresh(im);
im1=im2bw(im,th);
imshow(im),figure,imshow(im1)