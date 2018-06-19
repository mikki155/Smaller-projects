
function logiskverdi=likBaklengs(vek1,vek2)

n=length(vek1);

m=length(vek2);

if (n==m)   
    logiskverdi =true;
    %nyttig sette (anta) at start er true. og
    %deretter endre til false dersom skulle vise 
    %seg å være false
    %NB ikkje ha både logisk verdi til true og til
    %false i for løkka pga. Dersom siste ledd er
    %true men alle andre er false, vil vi få
    % logiskverdi = true som sluttverdi... men
    % vi vil berre ha dette dersom alle ledd er true..
    % eventuelt kan vi nytte break funksjonen
    %denne avsluttar for løkka når vi har funne eit ledd
    %som ikkje er true.
    
for i=1:n
    if (vek1(i)== vek2(m+1-i))
      logiskverdi = true;
    else
        logiskverdi = false;
        break; % dette avsluttar forløkka med ein gong
        % vi har funne eit ledd som ikkje er true.
        %da veit vi at vektorane ikkje er omvendt like.
    end % if
    
end % end for

else
   
    logiskverdi = false;
end % end if

end % funktion

    