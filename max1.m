%To find the maximum value in an array
clc
clear all
close all
x=-5:5;
max=0;
l=length(x);
for i=1:l
    if x(i)>max
        max=x(i);
    end
end
max

