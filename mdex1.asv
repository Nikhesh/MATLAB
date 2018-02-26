%To simulate white square in a black background
clc
clear all
close all
im=zeros(256);
[m,n]=size(im);
r=10;
for i=1:m
    for j=1:n
        if(i-128)^2+(j-128)^2<=r^2
            im(i,j)=1;
        end
    end
end
imshow(im)