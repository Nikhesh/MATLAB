clc
clear all
close all
im=ones(256);
[m,n]=size(im);
for i=1:m
    for j=1:n
        im1(i,j)=((j).^(i+j))*im(i,j);
    end
end
imshow(im),figure,imshow(im1)