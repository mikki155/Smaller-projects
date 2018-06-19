function stat = sub(list, number)
stat = true;
list = sort(list);

for i = 1:length(list)-1
    if list(i) == list(i+1)
    stat = false;
    end

end

