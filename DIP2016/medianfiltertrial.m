clc
clear all
close all
im=imread('cameraman.tif');
noise1=imnoise(im,'salt & pepper',0.2);
im1=medfilt2(noise1,[5 5]);
imshow(im),figure,imshow(noise1),figure,imshow(im1)