function m = trans(A)

[rad, kol] = size(A);

if rad ~= kol
    error('Tha fack are you doin?');
end
m = zeros(rad);

for i = 1:rad
    for j = 1:kol
        m(i, j) = A(j, i);
    end
end

end

