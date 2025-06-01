# Created by Octave 4.2.1, Sat Sep 30 16:16:36 2023 GMT <unknown@Vidhi-PC>
clear;close all;clc;
freql=4000;#Primary frequency
harm=1:1.5:15;#harmonic coefficients
freq=harm*freql;#array of frequencies
w=2*pi*freq;#angular frequency arrayy(omega)
tf=2.0;#final time duraion
Fs=44100;#samples per second
t=linspace(0,tf,tf*Fs);#time array
x=zeros(size(t));#audio data array
zeta=0.0005;#damping or decay ratio
for cnt=1:length(w)
  #create decaying sinusoidal function to add to previous audio data
  x=x+sin(w(cnt)*t).*exp(-zeta*w(cnt)*t)/((cnt-1)*0.5+1);
  endfor
  x=x/max(x);#normalize x so that max(x)=1
  x4=[x x x x];#array four times length of x
  #output the audio files
  audiowrite('harmonics.wav',x,Fs);
  audiowrite('harmonics4.wav',x4,Fs);


