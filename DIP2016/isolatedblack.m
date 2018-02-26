clc
clear all
close all
im=imread('cameraman.tif');
[m,n]=size(im);
h=ones(256);
h(1:4:m,1:4:n)=0;
im1=double(im)+double(h);
imshow((im1),[])



