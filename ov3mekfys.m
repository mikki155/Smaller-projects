%Du har totalt �tte m�lepunkter, s� derfor m� x-aksen best� av �tte
%enheter. Hver enhet blir da et m�lepunkt. Under bare setter jeg inn noen
%tilfeldige verdier for mu (som du kan fylle inn). Du trenger ikke ha med
%standardavvik i skriptet, siden du bare trenger feilen i plottet. I
%tillegg til plottene som st�r under, m� du jo selvsagt ha med plott for de
%eksperimentelle punktene du regner ut. Men da er det bare � legge til en ny
%matrise med disse verdiene, og legge til en ny linje i 'legend' som du ser
%under. Du trenger ikke ha med legend, men du m� uansett l�re deg det innen
%du skal skrive rapport i latex.

x = 1:8;

midmu = [5 5 5 5 5 5 5 5]; %middelverdi for mu

stermu = [1 1 1 1 1 1 1 1]; %standardfeil for mu

t = midmu - stermu;
s = midmu + stermu;

plot(x, t, 'b', 'Linewidth', 1.5);
hold on
plot(x, s, 'g', 'Linewidth', 1.5);
hold on
plot(x, midmu, 'r', 'Linewidth', 1.5);
axis([1 8 3 7]); %skalerer aksene, s�nn at ikke noen linjer forsvinner ut (disse m� du justere p�)
legend('\mu - \Delta \mu', '\mu + \Delta \mu', '\mu');
%For � f� overline (strek) over mu, m� du bare fikse p� interpreter n�r
%figuren kommer opp. Sett 'TeX' til 'LaTeX', og erstatt '\mu' med
%'overline{\mu}' f.eks. Dette gj�r du ved � h�yreklikke p� legendbildet
%�verst til h�yre, og trykke p� 'interpreter'. 
%Selvsagt m� du ogs� ha med navn p� aksene, og tittel for plottet. Dette var den enkleste metoden.

%Hvis du virkelig �nsker � regne ut de forskjellige verdiene i matlab, og
%plotte senere, m� du (s� vidt jeg vet) bruke en for-loop. Det kan du
%gj�re slik:


mu = [1 2 3 4 5 6 7 8]; %m�leverdier for mu (satt inn random verdier)

midmu = 0;
for i = 1:8
    midmu = midmu + mu(i);
end

midmu = midmu/8;

%n� har du middelverdien for mu, men det gjenst�r � regne ut st. avvik og
%feil. Hvis du absolutt vil, kan du gj�re det.