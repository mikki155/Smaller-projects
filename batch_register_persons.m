function cell = batch_register_persons()
s = input('Skal du registrere flere personer (ja/nei)? \n', 's');
cell = {};

while strcmpi(s, 'ja')
    cell{end+1} = input('Hva heter du?\n', 's');
    cell{end+1} = input('Hvilken dato er du f�dt?\n');
    cell{end+1} = input('Hvilken m�ned er du f�dt?\n');
    cell{end+1} = input('Hvilket �r er du f�dt?\n');
    cell{end+1} = input('Hva er telefonnummeret ditt?\n');
    s = input('Skal du registrere flere personer (ja/nei)? \n', 's');
end

end