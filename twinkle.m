# Created by Octave 4.2.1, Mon Oct 02 14:04:25 2023 GMT <unknown@Vidhi-PC>
#Twinkle twinkle little star
clc
clear all
close all
t=0:1/44100:0.5;
c=0.6*sin(2*pi*262*t);
g=0.6*sin(2*pi*392*t);
a=0.6*sin(2*pi*440*t);
f=0.6*sin(2*pi*349*t);
e=0.6*sin(2*pi*330*t);
d=0.6*sin(2*pi*294*t);
offset=zeros(1,500);
g=[c offset c offset g offset g offset a offset a offset g offset offset offset f offset f offset e offset e offset d offset d offset c g offset g offset f offset f offset e offset e offset d g offset g offset f offset f offset e offset e offset d offset c offset c offset g offset g offset a offset a offset g offset offset offset f offset f offset e offset e offset d offset d offset c];
sound(g,44100);

