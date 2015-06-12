1;

% 1.1 - Compute PCA
function [P, V] = PCA(D)
   % subtract means
   subtract_mean = D - mean(D);
   
   % covariance matrix
   covar = cov(subtract_mean);
   
   % compute eigenvalues and eigenvectors
   [eigenvals, eigenvecs] = eig(covar);
   eigenvals = diag(eigenvals);
   
   % sort the eigenvalues and eigenvectors
   [V, idx] = sort(eigenvals, "descend");
   P = eigenvecs(:, idx);
end

% Load the data, discard the first column since it's non-numeric
data = dlmread("alo.txt", ",", 0, 1);

% 1.2 Compare the error of dimensionality reduction
i = 0;
while i < 16
    % TODO: calculate the error
end

% TODO: Plot the error