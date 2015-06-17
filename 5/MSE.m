function [ e_l ] = MSE( l )
data = dlmread('alo.txt', ',', 0, 1);
[P,V] = PCA(data);

D_e = mean(data);

P_l = P(:, 1:(size(P,2)-l));
P_l_trans = P_l';
sum = 0;
N = size(data,2);

i = 1;
while i <= N
    x = data(i,:)';
    y = P_l_trans * x;
    sum = sum + norm(x-(P_l*y+D_e'))^2;
    i = i+1;
end
e_l = sum/N;
plot(e_l);


end

