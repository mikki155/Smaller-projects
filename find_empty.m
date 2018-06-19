function [rad, kol] = find_empty(level)

[r, k] = size(level);

for i = 1:r
    for j = 1:k
        if level(i, j) == 0
            rad = i;
            kol = j;
        end
    end
end

end

