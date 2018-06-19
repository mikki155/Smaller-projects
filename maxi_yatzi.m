function melding = maxi_yatzi(liste)
flestverdi = 0;
maxantall = 0;

for i = 1:6
   antall = sum(liste==i);
   if antall >= maxantall
       flestverdi = i;
       maxantall = antall;
   end
end

end

