
clear all; close all; clc

L=10; %seconds of data to be created
n=2048;  % number of the steps to be taken

t2=linspace(0,L,n+1); %divide the time into 2048 intervals
t=t2(1:n);  

% create a man made signal having various frequency contents
S=(1.5*cos(5*t)+0.5*exp(0.5*(t-3))+ tanh(0.2*(-t+2)) +0.2*exp(-(t-4).^2)...
+1.5*sin(6*t)+4*cos(3*(t-6).^2))/10+(t/20).^4; %created signal

