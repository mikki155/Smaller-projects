function readPolygonFile(file)

f = fopen('data.txt', 'r');
vec = [];
i = 1;
if f == -1
    error('Filen kunne ikke åpnes.');
else
    while feof(f) ~= 1
        string = fgetl(f);
        vec(i:(i+1)) = str2num(string);
        i = i + 2;
    end
end
fclose(f);
if fclose(f) == -1
    error('Filen kunne ikke lukkes.');
end
end

