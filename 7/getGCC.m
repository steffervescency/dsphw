function tau_ij = getGCC(sig_i, sig_j)
    % run FFT on sig_i and sig_j
    % 22050 is the Nyquist frequency
    L = 22050;
    x_i = fft(sig_i, L);
    x_j = fft(sig_j, L);
    
    % multiply by the conjugate
    % and divide by the product of the length
    num = x_i .* conj(x_j);
    denom = max(abs(num), 1e-12);
    frac=num./denom;
    
    % perform the inverse FFT
    % and throw away the upper half
    tdoa=ifft(frac, L);
    tdoa = tdoa(1:length(tdoa)/2, :);
    
    % find the delay
    [maxval, maxidx]= max(tdoa);
    tau_ij = maxidx;
end