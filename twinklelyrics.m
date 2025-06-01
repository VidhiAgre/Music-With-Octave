clc;
clear all;
close all;

fs = 44100;
t = 0:1/fs:0.4;  % Duration of each note

% Define musical notes (frequencies in Hz)
c = 0.6*sin(2*pi*262*t);
d = 0.6*sin(2*pi*294*t);
e = 0.6*sin(2*pi*330*t);
f = 0.6*sin(2*pi*349*t);
g = 0.6*sin(2*pi*392*t);
a = 0.6*sin(2*pi*440*t);

offset = zeros(1, round(0.1*fs));  % Short pause between notes

% Lyrics line by line
lyrics = {
    'Twinkle twinkle little star'
    'How I wonder what you are'
    'Up above the world so high'
    'Like a diamond in the sky'
};

% Melody chunks for each line
line1 = [c offset c offset g offset g offset a offset a offset g offset];
line2 = [f offset f offset e offset e offset d offset d offset c offset];
line3 = [g offset g offset f offset f offset e offset e offset d offset];
line4 = [g offset g offset f offset f offset e offset e offset d offset];

% Display lyrics and play sound in sync
disp(lyrics{1});
sound(line1, fs);

disp(lyrics{2});
sound(line2, fs);


disp(lyrics{3});
sound(line3, fs);


disp(lyrics{4});
sound(line4, fs);

disp(lyrics{1});
sound(line1, fs);

disp(lyrics{2});
sound(line2, fs);


