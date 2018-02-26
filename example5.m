%Test for linearity of DT system
clc
clear all
close all
%Step 1: Two signals x1 and x2
n=-10:10;
w1=0;
w2=pi;
x1=exp(j*w1*n); %DC signal
x2=exp(j*w2*n); %High frequency signal
%Step 2: Define the system
A=2;
% C=2;
y1=exp(x1);   %Applying the input x1 to the system
y2=exp(x2);   %Applying the input x1 to the system
ys=exp(x1+x2);%Applying the inputs x1+x2 to the system
yp=y1+y2;      %Sum of the responses 
if(ys==yp)
    disp('Linear system')
else
    disp('Non-linear system')
end




% subplot(2,1,1),stem(n,x1,'filled','b','linewidth',2)
% subplot(2,1,2),stem(n,x2,'filled','r','linewidth',2)
