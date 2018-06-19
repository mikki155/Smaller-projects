function sum = vectorsum(vector)

sum = 0;
 for i = 1:length(vector)
     sum = sum + vector(i);
 end
end
%Funksjonen regner først initialverdien av sum, og adderer det i-ende
%elementet i vector for å få res (første gang er i = 1). Så itererer den dette til siste element i
%i vector før den gir svaret.