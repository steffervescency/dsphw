function y = pre(s)
    y = filter([1, -0.95], 1, s);
end