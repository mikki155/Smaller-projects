function [x,y]=antallPunkter(argument)
% skal ha like mange pubnkt som argument gir.
%skal plotte ein sirkel

antallPunkter=argument;

vinkel=0;
%prealokering
x = zeros(length(argument));
y= zeros(length(argument));

% vi må legge til 1 for å få 
for i=1:antallPunkter+1;
    
    vinkel = 2*pi*(i-1)/(antallPunkter);
    
    x(i)=cos(vinkel);
    
    y(i)=sin(vinkel);
end

plot(x,y)
hold on

axis(10,10,10,20)
%axis har maks min til x og maks min til y
xlabel('x-akse')
ylabel('y-akse')
title('sirkel')
legend('sirkelplott')
end % funktion
