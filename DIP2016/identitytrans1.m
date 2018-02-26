%Identity transformation
clc
clear all
close all
%Step 1: Create the identity transformation
t=[];
for x=0:255
    if (x<255)
        t=[x,t];
    end
end
% 
%Step2: Apply the transformation to the input image
im_in=imread('cameraman.tif');
[m,n]=size(im_in);
for i=1:m
    for j=1:n
        im_out(i,j)=t(im_in(i,j)-1);
    end
end
%Step 3: Display the results
subplot(1,3,1),imshow(im_in),
subplot(1,3,2),plot(t)
subplot(1,3,3),imshow(uint8(im_out))

