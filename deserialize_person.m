function strukt = deserialize_person(person)

d = str2num(person(1:2));
m = str2num(person(4:5));
y = str2num(person(7:10));

strukt = struct('day', d, 'month', m, 'year', y);

end

