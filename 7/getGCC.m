function tau_ij = getGCC(sig_i, sig_j)
    % run FFT on sig_i and sig_j
    L = 22050;
    x_i = fft(sig_i, L);
    x_j = fft(sig_j, L);
    
    num = x_i .* conj(x_j);
    denom = max(abs(num), 1e-12);
    
    frac=num./denom;
    gphat=ifft(frac, L);

    [maxval, maxidx]= max(gphat);
    tau_ij = maxidx;
end