%FY1001/TFY4145 Mekanisk fysikk hoesten 2013.
%Oving 7, oppgave 4: Numerisk losning av bevegelsen
%til en matematisk pendel. Eulermetoden ("Forward Euler").
%
clear all;
format long;
g = 9.81; % tyngdens akselerasjon (m/s^2)
L = 1.0; % pendelens lengde (m)
dt = 0.001; %tidssteget (s)
t = 0:dt:10; % tidsintervallet (s)
%Definerer vinkel alpha(t) og hastighet v(t):
alpha = 0*t;
v = 0*t;
%Initialbetingelser for alpha (rad) og v (m/s)
alpha(1) = 0;
v(1) = 2;
%Losning med Euler-integrasjon
for n = 1:(length(t)-1)
    alpha(n+1) = alpha(n) + v(n)*dt/L;
    v(n+1) = v(n) - g*dt*sin(alpha(n));
    E = (1/2)*(v(n)-g*dt*sin(alpha(n))) + g*(L-L*cos(alpha(n)));
end;
%Plotter alpha(t)
hold on;
plot(t,alpha*180/pi,'b');
plot(t, E, 'g');
xlabel('t (s)');
ylabel('vinkelutslag (grader) og E/m');

%Som en kan se er E (plottet uten m) konstant, som betyr at den mekaniske energien er
%bevart.