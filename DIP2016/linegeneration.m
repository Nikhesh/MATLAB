clc
clear all
close all
im=zeros(100);
[m,n]=size(im);
for i=1:m
    for j=1:n
        if (mod(j,10)==0)
            im(i,j)=1;
        end
    end
end
%im(128,:)=1;
%im(:,128)=1;
imshow(im)