function res = fn(vector)
vector = [1:i]
res = 0;
 for i = 1:length(vector)
     res = res + vector(i)
 end
end
%Funksjonen regner først initialverdien av res, og adderer det i-ende
%elementet i vector for å få res (første gang er i = 1). Så itererer den dette til siste element i
%vector før den gir svaret.