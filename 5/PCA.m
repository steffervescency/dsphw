function [P, V] = PCA(D)
   % subtract means
   D_e = mean(D);
   subtract_mean = D - D_e(ones(size(D,1),1),:);
   
   % covariance matrix
   covar = cov(subtract_mean);
   
   % compute eigenvalues and eigenvectors
   [eigenvecs, eigenvals] = eig(covar);
   eigenvals = diag(eigenvals);
   
   % sort the eigenvalues and eigenvectors
   [V, idx] = sort(eigenvals, 'descend');
   P = eigenvecs(:, idx);
end