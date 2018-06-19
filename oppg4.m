vareliste = ['Vare 1'; 'Vare 2'; 'Vare 3'];
prisliste = [100, 200, 160];

mva = 0.25;

vareMVA = mva*prisliste;

prisTotal = vareMVA + prisliste;

totalMVA = sum(vareMVA);

total = totalMVA+prisTotal;

fprintf('------------------------------\n');
fprintf('Hva \t\tPris\tMVA\tTotal\n');
for i = 1:size(vareliste, 1)
    fprintf('%s\t\t%d\t\t%d\t%d\n', vareliste(i, :), prisliste(i), vareMVA(i), prisTotal(i));
end
fprintf('-----------------------------\n\n');
fprintf('Total MVA\t\t\t%d\n', totalMVA);
fprintf('\tTakk for en hyggelig \n\t kalkulasjon!\n');
fprintf('------------------------------\n');