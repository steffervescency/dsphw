function y = create2Sin( freq1, Fs1, length1, freq2, Fs2, length2 )
t1 = [0:1/Fs1:length1/1000];
y1 = sin(2*pi*freq1*t1);   

t2 = [0:1/Fs2:length2/1000];
y2 = sin(2*pi*freq2*t2);

y = y1 + y2;
end

