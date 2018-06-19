function vec = histogram(table)

[r, k] = size(table);
i = 1;
j = 1;
vec = [];
val = 1;
count = 0;

while i <= r
    if table(i, j) == val && j < k
        count = count + 1;
        j = j + 1;
    elseif table(i, j) == val && j == k && i < r
        count = count + 1;
        i = i + 1;
        j = 1;
    elseif table(i, j) == val && j == k && i == r
        count = count + 1;
        vec(end+1) = count;
        i = i + 1;
    elseif i == r && j == k
        vec(end+1) = count;
        val = val + 1;
        i = i + 1;
    end
end

end

