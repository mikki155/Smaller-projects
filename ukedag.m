function dag = ukedag(entilsyv)
switch (entilsyv)
    case 1
        dag = 'Mandag';
    case 2
        dag = 'Tirsdag';
    case 3
        dag = 'Onsdag';
    case 4
        dag = 'Torsdag';
    case 5
        dag = 'Fredag';
    case 6
        dag = 'L�rdag';
    case 7
        dag = 'S�ndag';
    otherwise
        dag = 'Ikke en gyldig dag';
end
end
%Funksjonen gir en ukedag for et tall mellom 1-7 som brukeren skriver inn.
%I og med at det ikke finnes flere enn syv ukedager (og ukedagene gis ved
%tall), f�r brukeren opp "Ikke en gyldig dag", dersom h*n putter inn noe
%annet enn disse tallene.