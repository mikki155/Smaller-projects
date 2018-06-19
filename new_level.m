function mat = new_level(list)

mat = zeros(4);
[rad, kol] = size(mat);
t = 1;
for i = 1:rad
    for j = 1:kol
        mat(i, j) = list(t);
        t = t + 1;
    end
end

end

