
#happy birthday tune
clc
clear all
close all

fs = 44100;
t = 0:1/fs:0.4; #Short note duration

#Define notes
G = 0.6*sin(2*pi*392*t);
A = 0.6*sin(2*pi*440*t);
B = 0.6*sin(2*pi*494*t);
C = 0.6*sin(2*pi*523*t);
D = 0.6*sin(2*pi*587*t);
E = 0.6*sin(2*pi*659*t);
F = 0.6*sin(2*pi*698*t);

#Pause between notes
offset = zeros(1, round(0.1*fs));

#Melody: Happy Birthday to You
melody = [...
    G offset G offset A offset G offset offset C offset B offset offset...
    G offset G offset A offset G offset offset D offset C offset offset...
    G offset G offset G offset E offset C offset B offset A offset offset ...
    F offset F offset E offset C offset D offset C offset];

#Play
sound(melody, fs);

