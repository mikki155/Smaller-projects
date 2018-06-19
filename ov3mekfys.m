%Du har totalt åtte målepunkter, så derfor må x-aksen bestå av åtte
%enheter. Hver enhet blir da et målepunkt. Under bare setter jeg inn noen
%tilfeldige verdier for mu (som du kan fylle inn). Du trenger ikke ha med
%standardavvik i skriptet, siden du bare trenger feilen i plottet. I
%tillegg til plottene som står under, må du jo selvsagt ha med plott for de
%eksperimentelle punktene du regner ut. Men da er det bare å legge til en ny
%matrise med disse verdiene, og legge til en ny linje i 'legend' som du ser
%under. Du trenger ikke ha med legend, men du må uansett lære deg det innen
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
axis([1 8 3 7]); %skalerer aksene, sånn at ikke noen linjer forsvinner ut (disse må du justere på)
legend('\mu - \Delta \mu', '\mu + \Delta \mu', '\mu');
%For å få overline (strek) over mu, må du bare fikse på interpreter når
%figuren kommer opp. Sett 'TeX' til 'LaTeX', og erstatt '\mu' med
%'overline{\mu}' f.eks. Dette gjør du ved å høyreklikke på legendbildet
%øverst til høyre, og trykke på 'interpreter'. 
%Selvsagt må du også ha med navn på aksene, og tittel for plottet. Dette var den enkleste metoden.

%Hvis du virkelig ønsker å regne ut de forskjellige verdiene i matlab, og
%plotte senere, må du (så vidt jeg vet) bruke en for-loop. Det kan du
%gjøre slik:


mu = [1 2 3 4 5 6 7 8]; %måleverdier for mu (satt inn random verdier)

midmu = 0;
for i = 1:8
    midmu = midmu + mu(i);
end

midmu = midmu/8;

%nå har du middelverdien for mu, men det gjenstår å regne ut st. avvik og
%feil. Hvis du absolutt vil, kan du gjøre det.