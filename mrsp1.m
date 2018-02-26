clc
clear all
close all
im=ones(256);
[m,n]=size(im);
im1=im(1:2:end,1:2:end);
[m1,n1]=size(im1);
im2=zeros(2*m1,2*n1);
for i=1:m1
    for j=1:n1
        im2(2*(i-1)+1,2*(j-1)+1)=im1(i,j);
    end
end
imshow(im),figure,imshow(im2)