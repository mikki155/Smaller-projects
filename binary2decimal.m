function binary2decimal(streng)

streng = input('Tall:', 's');

b = 0;
for i = length(streng):-1:1
    if streng(i) == '1'
        b = b + 2^(length(streng)-i);
    elseif streng(i) == '0'
        b = b + 0;
    end
end
disp(b);
end