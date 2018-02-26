%To plot the frequency responses of two LTI systems in the same plot
clc
clear all
close all
%Define the impulse responses of the systems
h1=[0.5,0.5];  %LPF
h2=[0.5,-0.5]; %HPF
%To obtain the frequency responses
freqz(h1),hold on,freqz(h2)
lines=findall(gcf,'type','line');
set(lines(1),'color','red','linewidth',2);
set(lines(2),'color','blue','linewidth',2);
set(lines(3),'color','red','linewidth',2);
set(lines(4),'color','blue','linewidth',2);
