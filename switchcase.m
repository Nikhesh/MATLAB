clc
clear all
close all
%To generate square wave
t=linspace(0,1,100);
t1=linspace(0,1,99);
x=square(2*pi*5*t);
choice=input('Enter 1:Differentiation and Enter 2:Integration,');
switch(choice)
    case 1
        y=diff(x);
        subplot(2,1,1),plot(t,x),axis([0 1 -2 2]),xlabel('t'),ylabel('Amplitude'),title('Square Wave');
        subplot(2,1,2);plot(t1,y),xlabel('t'),ylabel('Amplitude'),title('Spikes Output');
    case 2
        y=cumsum(x);
        subplot(2,1,1),plot(t,x),axis([0 1 -2 2]),xlabel('t'),ylabel('Amplitude'),title('Square Wave');
        subplot(2,1,2);plot(t,y),xlabel('t'),ylabel('Amplitude'),title('Triangular Wave');
    otherwise
        disp('Wrong choice');
end;