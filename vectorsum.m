function sum = vectorsum(vector)

sum = 0;
 for i = 1:length(vector)
     sum = sum + vector(i);
 end
end
%Funksjonen regner f�rst initialverdien av sum, og adderer det i-ende
%elementet i vector for � f� res (f�rste gang er i = 1). S� itererer den dette til siste element i
%i vector f�r den gir svaret.