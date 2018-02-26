%Generation of halfwave and fullwave rectified output
clc
clear all
close all
%Specify the parameters of sine wave
A=1;  %Amplitude
f=5;  %Frequency
ph=0; %Phase
%Generate the time vector
t=linspace(0,1,1000);
x=A*sin(2*pi*f*t+ph);
%Coversion of sine to square
y=(x>=0);
% %To obtain Halfwave rectified output
% y1=0.5*(x+abs(x));
% %To obtain fullwave rectified output
% y2=abs(x);
%Plotting the result
subplot(2,1,1),plot(t,x),
subplot(2,1,2),plot(t,y),axis([0 1 -2 2])
% subplot(3,1,3),plot(t,y2)
% plot(t,x),xlabel('t'),ylabel('Amplitude')
% title(['A=',num2str(A),'V',' f=',num2str(f),'Hz',' \phi=',num2str(ph)])