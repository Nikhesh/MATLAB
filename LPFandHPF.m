clc
clear all
close all
h=[0.0246 0.2344 0.4821 0.2344 0.0246 ];
p=length(h);
for i=1:p
    h1(i)=(-1).^i*h(i);
end
freqz(h),hold on,freqz(h1)
line=findall(gcf,'type','line');
set(line(1),'color','red','linewidth',2)
set(line(2),'color','blue','linewidth',2)
set(line(3),'color','red','linewidth',2)
set(line(4),'color','blue','linewidth',2)
,legend('LPF','HPF')