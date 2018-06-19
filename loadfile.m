function newcell = loadfile(filename)
fid = fopen(filename, 'r');
cell = {};
i = 1;
while feof(fid) ~= 1
    line = fgetl(fid);
    cell{i} = line;
    i = i + 1;
end

fclose(filename);
newcell = {};
j = 1;
for i = 1:length(cell)
    t = deserialize_person(cell{i});
    newcell{j} = t;
    j = j + 1;
end

end

