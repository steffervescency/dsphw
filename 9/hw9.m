% 1.1 Read and play back file
[sound1, fs] = audioread('sound1.wav');
% sound(sound1, fs);

% 1.2 Pre-emphasis filter
y = pre(sound1(:, 1));

% 1.3 Windowing with 10ms shift and 25ms 
M = windowing(y, ceil(fs*10/1000), ceil(fs*25/1000));

% 1.4 Mel filterbank values
mels = mel(133.33334, 6855.4976, 1024, 16000, 24, 1125);
%plot([1:100], mels(:, 1:100))

% 1.5 Compute MFCC
% Apply FFT to each window


% Apply Mel filterbank 
% TODO

% Apply logarithm, DCT to get the MFCC
% TODO

% Visualize result
% TODO

% 1.6 Plot original signal, spectrogram, and MFCC spectrogram
% TODO