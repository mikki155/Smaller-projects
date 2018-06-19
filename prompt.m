function prompt()

p = input('Skriv inn kode:', 's');

while p ~= ' '
    p = input('\nFeil kode!\n\nSkriv inn kode:', 's');
end

disp('Riktig!')

end