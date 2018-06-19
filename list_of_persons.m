function list_of_persons(lop)
s = length(lop);
i = 1;
while s >= i
fprintf('%s, %d.%d.%d, %d\n', lop{i}, lop{i+1}, lop{i+2}, lop{i+3}, lop{i+4});
i = i + 5;
end

