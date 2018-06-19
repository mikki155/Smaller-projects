% box_non_stationary.m
% Box with superposition of two stationary states, ground state and one excited state
clear all; 
close all; 
format long;
% table with x-values
x0 = 0.0; x1 = 1.0;  NX = 1000;                             % x1 is the width of the box
x = x0 : (x1-x0)/NX : x1;
n1 = 1; n2 = 2;                                             % two quantum numbers (n2 is your choice)
psi1 = sqrt(2/x1)*sin(n1*pi.*x/x1); psi2 = sqrt(2/x1)*sin(n2*pi.*x/x1); % the two eigenfunctions 
% squared wave function at t = 0:          
Psi0sq =(1/2.0)* (psi1+psi2).^2;                            % 50/50 mixture

fullscreen = get(0,'ScreenSize');
% fullscreen is a matrix. fullscreen(1,2) are the pixel coordinates of the lower left corner, 
% fullscreen(3) is the width, fullscreen(4) is the height, all in pixels 
figure('Position',[0 0 0.5*fullscreen(3) 0.5*fullscreen(4)])  % determines the position and size on the screen
% calculate expected position at t = 0:
           s = 0;
           for nx = 2 : NX
		      s=s+x(nx)*Psi0sq(nx);                 % integration by trapezoidal rule 
                                                            % (end points do not contribute)
           end % of nx-loop 
           expectationvalue = s*(x1-x0)/NX;               
hold on;                                                    % allows us to overlay plots
p = plot(x,Psi0sq,'-','EraseMode','xor','linewidth',2);     % plots squared wave function
q = plot(expectationvalue,0.05,'o');                        % plots expectation value of the position
hold off;

grid;
axis([0 x1 0 4]);

hold on;
xlabel('x')
ylabel('|Psi|^2');
om1=1; om2=om1*n2^2;                                         % means that n1 = 1
title('Superposistion of ground state and some excited state of a box. The circle shows how <x> moves');
%
t0 = 0; T = 2*pi; NT = 1200;	                             % time vector
t = t0 : T/NT : T;
for nt = 1 : length(t)
           eksp1 = exp(-1i*om1*t(nt)); eksp2 = exp(-1i*om2*t(nt));
	   Psisq =abs(psi1*eksp1+psi2*eksp2).^2/2;           % note that Psi itself is complex
	   s = 0;
           for nx = 2 : NX
		      s=s+x(nx)*Psisq(nx);
           end % of nx-loop 
           expectationvalue = s*(x1-x0)/NX;
set(p,'XData',x,'YData',Psisq)                               % changes the curve
set(q,'XData',expectationvalue,'YData',0.05)                 % moves the expectation value
drawnow
	   pause(0.01);                                      % increase if you want a "slower" animation
end % of t-loop
%line(x,'color','r');
hold off;