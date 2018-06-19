function prompt_person()

personal.name = input('Hva heter du?\n', 's');
personal.date = input('Hvilken dato er du født?\n');
personal.month = input('Hvilken måned er du født?\n');
personal.year = input('Hvilket år er du født?\n');
personal.phone = input('Hva er telefonnummeret ditt?\n');

fprintf('%s, %d.%d.%d, %d\n', personal.name, personal.date, personal.month, personal.year, personal.phone)

end

