function m = random_picture(picsize)

m = zeros(picsize);
[rad, kol] = size(m);

for i = 1:rad
    for j = 1:kol
        m(i, j) = randi(256, 1)-1;
    end
end

end

