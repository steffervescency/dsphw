function M = windowing(s, shift, width)
    window = hamming(width, 'periodic');
    m = floor(length(s)/(shift + width/shift));
    M = zeros(m, width);
    for n = 1:m
        start = n + shift*(n-1);
        M(n, :) = window.*s(start:start+width-1);
    end
end