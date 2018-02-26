%Contrast stretching
clc
clear all
close all
%Define the 4 points
p1=[0,0];
p2=[150,20];
p3=[200,200];
p4=[255,255];
% 3 lines L1,L2 and L3
%Define the slope of the three lines
m1=(p2(2)-p1(2))/(p2(1)-p1(1));
m2=(p3(2)-p2(2))/(p3(1)-p2(1));
m3=(p4(2)-p3(2))/(p4(1)-p3(1));
%Define the intercepts
c1=p1(2)-m1*p1(1);
c2=p2(2)-m2*p2(1);
c3=p3(2)-m3*p3(1);
%Building the transformation
t=[];
for x=0:255
    if (x<p2(1))
        t=[t,m1*x+c1];
    end
    if (x>p2(1) && x<p3(1))
        t=[t,m2*x+c2];
    end
    if (x>p3(1) && x<p4(1))
        t=[t,m3*x+c3];
    end
end
%Apply the transformation to the input image
im_in=imread('cameraman.tif')
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
