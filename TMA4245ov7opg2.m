%Normal

%niutval=100;
%AntallUtval=1000;
%pauseint=0.05;
%mu=5;
%sigma=2;
%for i=1:AntallUtval	
%	utval=normrnd(mu,sigma, niutval,1);
%	gjsnitt(i)=mean(utval);
%	subplot(1,2,1);
%	hist(utval);	
%	subplot(1,2,2);
%	hist(gjsnitt(1:i));
%	pause(pauseint)
%end
%subplot(1,2,1);
%title('Utval')
%subplot(1,2,2);
%title('Fordelinga til gjennomsnittet')

%Histogrammet ser ut til å være normalfordelt, og mean(gjsnitt) = 4,9974
%som er omtrent lik 5 (forventningsverdien). Gir mening at histogrammet er
%normalfordelt, siden den er en lineærkombinasjon av normalfordelte sett.

%Binomisk

niutval=100;
AntallUtval=1000;
pauseint=0.001;
n=5;
p=0.2;
for i=1:AntallUtval	
	utval=binornd(n,p, niutval,1);	
	gjsnitt(i)=mean(utval);
	subplot(1,2,1);
	hist(utval);
	subplot(1,2,2);
	hist(gjsnitt(1:i));
	pause(pauseint)
end

%Den binomiske fordelingen har omtrent samme fordeling
%som for normalfordeligene ovenfor.
%Forventningsverdien er N*p = 1, og resultatene gir mean(gjsnitt) = 0,9951.
%Sentralgrenseteoremet sier at dersom X_1, X_2, ..., X_n har
%forventningsverdi mu og varians sigma^2 (her mu = 1), så vil (mean(X) -
%mu)/(sqrt(sigma^2/n)) -> standard normalfordelig når n -> \infty. Det er
%tydelig ut ifra forsøket, hvor gjennomsnittet sammenfaller mer og mer med
%1 med økende niutval.