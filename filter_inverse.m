function t = filter_inverse(table)

[r, k] = size(table);

for i = 1:r
    for j = 1:k
        t = 255 - table(i, j);
    end
end

end

