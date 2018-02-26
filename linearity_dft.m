%Linearity property of DFT
clc
clear all
close all
%Step1: Define the signals
n=-10:10;
x1=ones(1,length(n));
x2=(-1).^n;
a1=2;
a2=4;
X1=fft(x1);
X2=fft(x2);
X=a1.*X1+a2.*X2;
Y=fft(a1.*x1+a2.*x2);
if (uint8(abs(X))==uint8(abs(Y)))
    disp('The transform is linear')
else
    disp('The transform is non-linear')
end
% stem(n,x1,'filled'),figure,stem(n,x2,'filled')
