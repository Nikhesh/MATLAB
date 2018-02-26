clear all
hw=10;

dt=.001;
t=[-60:dt:60];

%% ractangular pulse.

x=(5/2)*(sign(t+hw)-sign(t-hw));
%plot(t,x);
title(['Rectangular pulse width-',num2str(2.*hw),'ms']);
xlabel('time(ms)');
ylabel('Amplitude(V)');
rge=40;
axis([-rge rge 0 6]);

%% rectangular pulse frequency content by fourier analysis.

y=fftshift(fft(x));  % moving the zero-frequency component to the center of the array
N=length(y);         %to take the frquecny axis of the hoarmonics.
n=-(N-1)/2:(N-1)/2;  %divide the frequency compone
f=sqrt(y.*conj(y)); % to take the amplitude of each hoarmony.  
plot(n,f);  