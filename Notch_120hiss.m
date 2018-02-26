%To eliminate 120 Hz hum noise
load jimi
r=0.95
fn=120;
fs=8000;
w=2*pi*(fn/fs);
num=[1,-2*cos(w),1];
den=[1,-2*r*cos(w),r^2];
y=filter(num,den,x);
player1=audioplayer(x,fs);
player2=audioplayer(y,fs);
play(player1),pause,play(player2)
