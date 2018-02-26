%To find whether palindrome or not
clc
clear all
close all
x='madam';
% y=x(end:-1:1);
y=fliplr(x);
if (x==y)
    disp('Palindrome')
else
    disp('Not a palindrome')
end
