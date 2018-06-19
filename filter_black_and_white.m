function m = filter_black_and_white(table, treshold)

[r, k] = size(table);

for i = 1:r
    for j = 1:k
        if table(i, j) < treshold
            table(i, j) = 0;
        elseif table(i, j) >= treshold
            table(i, j) = 255;
        end
    end
end

end

