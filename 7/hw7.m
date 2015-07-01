[data, fs] = audioread('point8.au');

[I, J] = ndgrid(1:8, 1:8);
A = [getGCC(data(:, I), data(:, J))];

A