%Median filter for salt and pepper noise
clc
clear all
close all
im=imread('cameraman.tif');
im1=imnoise(im,'salt & pepper',0.1);
im2=medfilt2(im1,[5,5]);
imshow(im),title('Noise free image'),
figure,imshow(im1),title('Noisy image'),
figure,imshow(im2),title('Median filtered image')