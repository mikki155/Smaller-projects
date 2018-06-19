function cell = batch_register_persons()
s = input('Skal du registrere flere personer (ja/nei)? \n', 's');
cell = {};

while strcmpi(s, 'ja')
    cell{end+1} = input('Hva heter du?\n', 's');
    cell{end+1} = input('Hvilken dato er du født?\n');
    cell{end+1} = input('Hvilken måned er du født?\n');
    cell{end+1} = input('Hvilket år er du født?\n');
    cell{end+1} = input('Hva er telefonnummeret ditt?\n');
    s = input('Skal du registrere flere personer (ja/nei)? \n', 's');
end

end