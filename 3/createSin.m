function y = createSin(freq, Fs, length)
t = [0:1/Fs:length/1000];
y = sin(2*pi*freq*t);   
end