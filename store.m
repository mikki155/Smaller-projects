function store(filename, persons)
fid = fopen(filename, 'a');

for i = 1:length(persons)
    a = print_date(persons(i));
    fprintf(fid, '%s\n', a);
end
fclose(filename);

end

