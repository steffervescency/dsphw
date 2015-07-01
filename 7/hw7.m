[data, fs] = audioread('point8.au');

% Calculate the matrix
A = zeros(8, 8);
for i = 1:8
    for j = 1:8
       A(i, j) = getGCC(data(:, i), data(:, j))/44100;
    end
end

A