function person = person_from_json(json)

cell = {};
i = 10;
while json(i) ~= '"'
    cell{end+1} = json(i);
    i = i + 1;
end
s = length(cell);
person.name = sprintf('%s',cell{1:s});
i = i + 10;
cell = {};
while json(i) ~= '"'
    cell{end+1} = json(i);
    i = i + 1;
end
person.date.day = cell{1:s};

%bare å fortsette slik til strukten er ferdig.
end

