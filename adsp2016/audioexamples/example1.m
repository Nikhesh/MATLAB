clc
clear all
close all
[p,q]=wavread('voice.wav');
x=p(:,1)';
l=length(x);
y=x(1:2:end);
% y=zeros(1,2*l);
% for i=1:l
%     y(2*i-1)=x(i);
% end
% z=y(1:2:end);
 wavplay(x,q),pause,wavplay(y,q)
%  pause,wavplay(z,q)
% plot(p),figure,plot(y),figure,specgram(y)
% wavplay(p,q)
