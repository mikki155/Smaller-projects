%%%%%%%%%%%%%%%%%%%%%
%% MATLAB-program polarisering.m som utgangspunkt for
%% oppgave 1 i oving 4 i Bolgefysikk
%%%%%%%%%%%%%%%%%%%%%
% Gi verdier for pi, lambda og T; regn ut k og omega
pi = 3.141592654;
lambda = 1.0;
T = 1.0;
k = 2*pi/lambda;
omega = 2*pi/T;
% amplituder y0 og z0, inklusive fortegn
y0 = 1.0;
z0 = 1.0;
% N = antall punkter, med N = 36 tegnes en pil og
% et punkt for hver 10. grad
N = 36;
% Angi x-verdi
x = lambda/2;
% "Animasjon" av hvordan D-vektor roterer
% i yz-planet som funksjon av tida, i posisjon x
figure;
axis_range = 1.1*max(abs(y0),abs(z0));
axis([-axis_range axis_range -axis_range axis_range]);
hold on;
xlabel('y-aksen');
ylabel('z-aksen');
for i=1:N
t = i*T/N;
y = y0*(cos(k*x-omega*t) - sin(k*x-omega*t)) ;
z = z0*(cos(k*x-omega*t) - sin(k*x-omega*t));
% pb = pentagram med blaa farge
plot(y,z,'pb');
% med compass(a,b) tegnes en pil fra origo til punktet (a,b)
% r = roed farge
compass(y,z,'r');
% med pause(n) forsinkes animasjonen i n sekunder
pause(0.15);
end