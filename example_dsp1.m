%To convert sine wave to square wave
clc
clear all
close all
%Step 1: To generate square wave
t=linspace(0,1,100);
t1=linspace(0,1,99);
x=square(2*pi*5*t);
%Step 2: Differentiate square wave
choice=input('Enter 1: Differentiation,2:Integration')
switch(choice)
    case 1
        y=diff(x);
        subplot(2,1,1),plot(t,x),axis([0 1 -2 2]),
        subplot(2,1,2),plot(t1,y)
    case 2
        y=cumsum(x);
        subplot(2,1,1),plot(t,x),axis([0 1 -2 2]),
        subplot(2,1,2),plot(t,y)
    otherwise
        disp('Wrong choice')
end
