clc;
clear all;
close all;
%Input signal
fsamp = 500;
dt = 1/fsamp;
t = 0:dt:1;
x = sin(2*pi*0*t)+sin(2*pi*5*t)+sin(2*pi*10*t);
 
% Design N-tap bandstop filter
N = 256;
notch_min_hz = 5;
notch_max_hz = 5.1;
b = fir1(N, 2 * [notch_min_hz,notch_max_hz]/ fsamp, 'stop');
 
% Apply filter and plot
y = filter(b, 1, x);
plot(t, y);
grid on;
title('Filter Output');
xlabel('Time (secs)');
ylabel('Amplitude');
 
% Plot frequency response of filter
[H, W] = freqz(b);

plot(fsamp * W/(2*pi), 20*log10(abs(H)));
grid on;
title('Filter Frequency Response');
xlabel('Frequency (Hz)');
ylabel('(dB)');
