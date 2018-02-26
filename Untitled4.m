%Adding a noise to a signal 


my_voice = audiorecorder;
disp('Recording started...')
recordblocking(my_voice, 2);            % To limit recording for 2 seconds.
disp('Recording ended...');
play(my_voice);
dataentry = getaudiodata(my_voice);     % Store data in double-precision array.
clear all;  

   alpha=0.75;
   D=4096
 %% using filter method.  
  b = [1,zeros(1,D),alpha];  
 y = filter(b,1,dataentry);  
   
 %% echoed Hallelujah Chorus  
 play(my_voice,Fs);  

