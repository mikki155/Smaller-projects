b = random_picture(40);
if test_picture(b) == 0
    error('Ugyldig bilde');
end
t = filter_inverse(b);
vec = histogram(table);
bar(vec);
input = fprintf('Skriv inn terskelverdi:\n', 's');
nb = filter_black_and_white(b, input);
imshow(nb, [0, 255]);