%IMAGE EMBOSSING
 clc
 clear all
 close all
 im=imread('lena.tif');
 h=[-1 -1 0; -1 0 1; 0 1 1];
 im1=conv2(im,h,'same');
 imshow(im),figure,imshow((im1),[])