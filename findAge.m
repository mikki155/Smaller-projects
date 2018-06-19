function age = findAge(bYear, bMonth, bDay)

[yyyy, mm, dd] = current_date();

if bMonth>mm
    age = (yyyy-1)-bYear;
elseif mm == bMonth && bDay>dd
    age = (yyyy-1)-bYear;
elseif mm == bMonth && dd>bDay
    age = yyyy-bYear;
end

end

