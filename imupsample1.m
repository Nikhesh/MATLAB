%Upsampling of the image
clc
clear all
close all
im=checkerboard(32);
L=input('Enter the upsampling factor:');
[m,n]=size(im);
im1=zeros(L*m,L*n);
for i=1:m
    for j=1:n
        im1(L*(i-1)+1,L*(j-1)+1)=im(i,j);
    end
end
imshow(im),figure,imshow(im1)