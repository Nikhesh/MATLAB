%To find palindrome or not
clc
clear all
close all
x='madams';
% y=x(end:-1:1);
y=fliplr(x);
if(x==y)
    disp('Palindrome')
else
    disp('Not a palindrome')
end
