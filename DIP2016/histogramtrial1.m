clc
clear all
close all
im1=imread('cameraman.tif');
im2=1.5.*double(im1);

imshow(im1),figure,imshow(uint8(im2)),
figure,imhist(im1),figure,imhist(uint8(im2))