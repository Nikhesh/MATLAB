%Linear convolution without built-in function
clc
clear all
close all
%Getting the two inputs
x=input('Enter the values:');
h=input('Enter the values:');
n1=length(x);
n2=length(h);
X=[x,zeros(1,n2)];
H=[h,zeros(1,n1)];
for i=1:n1+n2-1
    y(i)=0;
    for j=1:n1
        if(i-j+1)>0
            y(i)=y(i)+X(j)*H(i-j+1);
        else
        end
    end
end
y


