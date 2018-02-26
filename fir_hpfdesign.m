clc
clear all
close all
M=51;    %Order of the filter
N=M+1;  %No. of coefficients
wc=0.15;
tau=(N-1)/2;
n=-10:10;
x=ones(1,length(n));
im=imread('C:\Documents and Settings\student\Desktop\DSP_LAB\lena.tif');
for n=1:N
    if(n==(tau+1))
        hd(n)=(pi-wc)/pi;
    else
        hd(n)=(sin(pi*(n-tau-1))-sin(wc*(n-tau-1)))/(pi*(n-tau-1));
    end
end
im1=conv2(im,hd,'same');
imshow(im),figure,imshow((im1))
% y=filter(hd,1,x);
% subplot(2,1,1),stem(x),
% subplot(2,1,2),stem(y),
