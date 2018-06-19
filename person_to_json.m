function person_to_json(person)

fprintf('{\n');
fprintf('  "name": "%s"\n', person.name);
fprintf('  "date": {\n');
fprintf('  "day": %d,\n', person.date.day);
fprintf('  "month": %d,\n', person.date.month);
fprintf('  "year": %d\n', person.date.year);
fprintf(' },\n');
fprintf(' "phone": %d\n', person.phone);
fprintf('}\n')

end

