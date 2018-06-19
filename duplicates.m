function list = duplicates(x, y)

list = [];
l1 = length(x);
l2 = length(y);

if l1>l2
    for i = 1:l1
        for j = 1:l2
        if x(i) == y(j) && list ~= y(j)
            list(end+1) = y(j);
        end
        end
    end
end
sort(list);
end

