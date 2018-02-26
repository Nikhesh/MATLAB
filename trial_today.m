%Adding a noise to a signal 


my_voice = audiorecorder;
disp('Recording started...')
recordblocking(my_voice, 2);            % To limit recording for 2 seconds.
disp('Recording ended...');
play(my_voice);                         % Play back the recording.
dataentry = getaudiodata(my_voice);     % Store data in double-precision array.
noise=randn(size(dataentry));
noise_with_signal=noise+dataentry
% Sample rate is 16000
subplot(3,1,1),plot(dataentry),axis([0 16000 -5 5]);                 % Plot the recorded voice.
subplot(3,1,2),plot(noise),axis([0 16000 -5 5]);                     % Plot the noise.
subplot(3,1,3),plot(noise_with_signal),axis([0 16000 -5 5]);         % Plot the noise with signal.

