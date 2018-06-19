function stat = luhn(nr)
stat = [];
for i = length(nr):-2:1
    stat(end+1) = 2*str2num(nr(i));
end
    stat = sum(stat);

end

