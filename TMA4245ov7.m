trondheim = load('trondheim.txt');
bodo = load('bodo.txt');
tynset = load('tynset.txt');

TRD = trondheim(:, 6);
BO = bodo(:, 6);
TY = tynset(:, 6);
MND = trondheim(:, 3);

MT = [TRD, BO, TY];

figure(1);
boxplot(TRD, MND);
xlabel('Mnd');
ylabel('Temp Trondheim');

figure(2);
boxplot(BO, MND);
xlabel('Mnd');
ylabel('Temp Bod�');

figure(3);
boxplot(TY, MND);
xlabel('Mnd');
ylabel('Temp Tynset');

%Boksplottene viser en tiln�rmet normalfordeling med lengre venstre og
%h�yre haler. Generelt er det st�rst varians i m�nedene januar og mai.

figure(4)
hist(TRD);
xlabel('Temp Trondheim');
ylabel('Frekvens');

figure(5)
hist(BO);
xlabel('Temp Bod�');
ylabel('Frekvens');

figure(6)
hist(TY);
xlabel('Temp Tynset');
ylabel('Frekvens');

%Median sammenfaller med forventningsverdi i en normalfordeling pga
%symmetri. S� forholdet mellom gjennomsnittsverdi og median bli identisk
%lik 1, siden begge er forventningsrette estimatorer.

TRDrel = (mean(TRD)/(median(TRD)))
BOrel = (mean(BO)/(median(BO)))
TYrel = (mean(TY)/(median(TY)))

%Disse ligger alle rundt 1; hhv. 1,050, 1,244, 0,971
%Temperaturen i Bod� er i snitt lavere enn i Trondheim og Tynset, men har
%kortere hale enn dem.

%Ekstremverdier kan finnes ved � se p� max og min for de ulike vektorene:

minTRD = min(TRD)
maxTRD = max(TRD)
minBO = min(BO)
maxBO = max(BO)
minTY = min(TY)
maxTY = max(TY)

%Generelt forekommer disse verdiene sjeldent, som en kan se ved �
%sammenligne med histogrammene.

figure(7)
normplot(TRD)
xlabel('Temp. obs. Trondheim');
ylabel('Sannsynlighet');

figure(8)
normplot(BO)
xlabel('Temp. obs. Bod�');
ylabel('Sannsynlighet');

figure(9)
normplot(TY)
xlabel('Temp. obs. Tynset');
ylabel('Sannsynlighet');

%Ut ifra qq-plottene er det tydelig at dataene ikke f�lger en line�r
%sammenheng, s� observasjonene er ikke normalfordelte.

figure(10)
scatter(TRD, BO);
xlabel('Temp Trondheim');
ylabel('Temp Bod�');

figure(11)
scatter(TRD, TY);
xlabel('Temp Trondheim');
ylabel('Temp Tynset');

figure(12)
scatter(TY, BO);
xlabel('Temp Tynset');
ylabel('Temp Bod�');

corrTRDBO = corr(TRD, BO)
corrTRDTY = corr(TRD, TY)
corrTYBO = corr(TY, BO)


%Koeffisientene er hhv. : 0,910, 0,930, 0,814. Ut ifra scatterplottene
%stemmer dette, siden det er en positiv line�r sammeneheng mellom dem.
