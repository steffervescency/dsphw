1;

pkg load signal;

function y = createSin(freq, Fs, length)
t = [0:1/Fs:length/1000];
y = sin(2*pi*freq*t);
end

s = createSin(440, 44100, 10000);
sn = createSin(1000, 44100, 10000);

% TODO: update this to use playaudio in Matlab
wavwrite(s, 44100, "ex3-1.wav")
wavwrite(s+sn, 44100, "ex3-2.wav")

% TODO: clean up this code (3c asks for a function, 3e asks for the matlab filter toolbox)
% also write up justification for parameters
[b, a] = butter(10, 0.02);
res = filter(b, a, s+sn);
wavwrite(res, 44100, "ex3-3.wav")