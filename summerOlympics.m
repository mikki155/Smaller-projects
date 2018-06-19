function vec = summerOlympics(firstYear, lastYear)

vec = [];
if rem(firstYear, 4) == 0 && rem(lastYear, 4) == 0
    vec = firstYear:lastYear;
    return
end

for i = 1:3
    if rem(firstYear, 4) ~= 0 && rem(lastYear, 4) ~= 0
        firstYear = firstYear+1;
        lastYear = lastYear-1;
        if rem(firstYear, 4) == 0 && rem(lastYear, 4) == 0
            vec = (firstYear):4:(lastYear);
        end
    elseif rem(firstYear, 4) ~= 0 && rem(lastYear, 4) == 0
        firstYear = firstYear+1;
        if rem(firstYear, 4) == 0
            vec = (firstYear):4:lastYear;
        end
    elseif rem(lastYear, 4) ~= 0 && rem(firstYear, 4) == 0
        lastYear = lastYear-1;
        if rem(lastYear, 4) == 0
            vec = firstYear:4:(lastYear);
        end
    end

end
end