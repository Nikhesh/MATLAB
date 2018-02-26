%To Sample the analog signal Asin(2*pi*f*t)
clc
clear all
close all
display('SAMPLING OF ANALOG SIGNAL ASIN(2*PI*F*T)');
%Step 1: Generating the Signal
A=input('Enter the input signal amplitude: ');        %Obtaining the input signal parameters
f=input('Enter the input signal frequency(in Hz): ');
nc=input('Enter number of cycles needed: ');
tmax=nc*(1/f);                                        %Defining time vector
t=0:1e-2:tmax;
x=A*sin(2*pi*f*t);                                    %Defining the input signal
%Step 2: Sampling the signal 
fmin=2*f;                                             %Calculating minimum sampling frequency according to sampling theorem
display('Minimum sampling frequency needed(in Hz): ');
display(fmin);
fs1=input('Enter the sampling frequency (violating sampling theorem): ');     %Obtaining sampling frequencies
fs2=input('Enter the sampling frequency (without violating sampling theorem): ');
T1=1/fs1;                                                                     %Defining sampling time (violating sampling theorem)
t1=0:T1:tmax;
x1=A*sin(2*pi*f*t1);                                                          %Sampled Signal (violating sampling theorem)
T2=1/fs2;                                                                     %Defining sampling time (without violating sampling theorem)
t2=0:T2:tmax;
x2=A*sin(2*pi*f*t2);                                                          %Sampled Signal (without violating sampling theorem)
%Step 3: Determing the Spectrum
N=1024;
fs=100;
F=fs/2*linspace(0,1,N/2);                                                     %Defining Frequency vectors
F1=fs1/2*linspace(0,1,N/2);
F2=fs2/2*linspace(0,1,N/2);
X=fft(x,N)/N;                                                                   %Applying Fast Fourier Transforms
X1=fft(x1,N)/N;
X2=fft(x2,N)/N;
%Step 4: Plotting the signals 
subplot(2,3,1),plot(t,x),title('Input signal'),xlabel('Time'),ylabel('Amplitude'); %Plotting the input signal
subplot(2,3,2);                                                                      %Plotting the sampled signal (violating sampling theorem)
stem(t1,x1),title('Sampled Signal (Violating sampling theorem)'),xlabel('Time'),ylabel('Amplitude');
subplot(2,3,3);                                                                    %Plotting the sampled signal (without violating sampling theorem)
stem(t2,x2),title('Sampled Signal (Without Violating sampling theorem)'),xlabel('Time'),ylabel('Amplitude');
subplot(2,3,4),plot(F,2*abs(X(1:length(F)))),title('Input signal spectrum'),xlabel('Frequency'),ylabel('Magnitude');
subplot(2,3,5),plot(F1,2*abs(X1(1:length(F1)))),title('Spectrum (violating sampling theorem)'),xlabel('Frequency'),ylabel('Magnitude');
subplot(2,3,6),plot(F2,2*abs(X2(1:length(F2)))),title('Spectrum (without violating sampling theorem)'),xlabel('Frequency'),ylabel('Magnitude');