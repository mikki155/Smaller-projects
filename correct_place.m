function corr = correct_place(level)
[rad, kol] = size(level);
corr = 0;
tall = 1;
if level(rad, kol) == 0
    corr = 1;
end

for i = 1:rad-1
    for j = 1:kol
        if level(i, j) == tall
            corr = corr + 1;
        end
        tall = tall + 1;
    end
end

for k = 1:kol-1
    if level(rad, kol) == tall
        corr = corr + 1;
    end
    tall = tall + 1;
end



end

