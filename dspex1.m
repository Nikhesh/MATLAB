%To check palindrome or not
clc
clear all
close all
a='malaylam';
b=a(end:-1:1);
if(a==b)
    disp('palindrome')
else
    disp('not a palindrome')
end
