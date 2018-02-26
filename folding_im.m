%Even and odd part of imag
clc
clear all
close all
im=imread('cameraman.tif');
%Folding
im1=fliplr(im);
im2=flipud(im1);
%Even part
y1=0.5.*(im+im2);
y2=0.5.*(im-im2);
z=y1+y2;
imshow((z))