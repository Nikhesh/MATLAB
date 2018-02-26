%To proove the linearity property of DFT
clc
clear all
close all
x1=input('Enter the sequence 1:');
x2=input('Enter the sequence 2:');
n1=length(x1);
n2=length(x2);
m1=dftmtx(n1);
m2=dftmtx(n2);
a=10;
b=5;
y1=m1*x1';
y2=m2*x2';
LHS=(a*y1)+(b*y2);
y=(a*x1)+(b*x2);
m=dftmtx(max(n1,n2));
RHS=m*y';
if LHS==RHS
    disp('DFT is a linear transform')
else
   disp('DFT is a non-linear transform') 
end

