1;
i = 1;
e = zeros(16);
while i <= 16
   e(i) = MSE(i); 
   i = i+1; 
end

plot(1:16, e);