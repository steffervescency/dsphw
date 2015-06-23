x = [2.1, 2.2, 2.4, 2.6, 2.7, 2.8, 2.9, 3.0, 3.1, 3.3, 3.5, 3.7];
y = [0.425, 0.351, 0.281, 0.288, 0.137, 0.163, 0.084, 0.047, 0.013, -0.048, -0.099, -0.142];

dims = size(x);
N = dims(2);

a = (N * (x*y') - sum(x)*sum(y))/(N*(x*x') - sum(x)^2);
b = (sum(y) - sum(x)*a)/N;

a
b