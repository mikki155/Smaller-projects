function res = fn(vector)
vector = [1:i]
res = 0;
 for i = 1:length(vector)
     res = res + vector(i)
 end
end
%Funksjonen regner f�rst initialverdien av res, og adderer det i-ende
%elementet i vector for � f� res (f�rste gang er i = 1). S� itererer den dette til siste element i
%vector f�r den gir svaret.