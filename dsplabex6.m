%Differentiate or integrate
clc
clear all
close all
t=linspace(0,1,100);
x=square(2*pi*5*t);
choice=input('Enter 1: diff,2:int');
switch(choice)
    case 1
        t1=linspace(0,1,99);
        y1=diff(x);
        subplot(2,1,1),plot(t,x)
        subplot(2,1,2),plot(t1,y1)
    case 2
        y2=cumsum(x);
        subplot(2,1,1),plot(t,x)
        subplot(2,1,2),plot(t,y2)
    otherwise
        disp('Wrong choice')
end
