function prompt_person()

personal.name = input('Hva heter du?\n', 's');
personal.date = input('Hvilken dato er du f�dt?\n');
personal.month = input('Hvilken m�ned er du f�dt?\n');
personal.year = input('Hvilket �r er du f�dt?\n');
personal.phone = input('Hva er telefonnummeret ditt?\n');

fprintf('%s, %d.%d.%d, %d\n', personal.name, personal.date, personal.month, personal.year, personal.phone)

end

