function days = cold_days(templist)

n = length(templist);
days = 0;
for i = 1:n
    if 0>templist(i)
        days = days + 1;
    end
end

end
