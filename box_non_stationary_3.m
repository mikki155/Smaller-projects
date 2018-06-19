% box_stationary_2.m
% Box with superposition of several stationary states
clear all; 
close all; 
format long;
% table with x-values
x0 = 0.0; x1 = 1.0;  NX = 500;                              % x1 is the width of the box
x = x0 : (x1-x0)/NX : x1;
n0 =208; dn = 10; n1 = n0-dn; n2 = n0+dn;                   % n0 is central value; dn is spread
nq = n1 : n2;                                               % quantum numbers 
fprintf( ' quantum numbers  nq =');
fprintf( ' %d ',nq );fprintf('\n');                         % (n2, the biggest,  is your choice)
N = 2*dn +2; fi = -pi/2; ssw = 0;
for n = 1 : length(nq)
wq(n) = (cos((nq(n)-n0)*pi/N))^2*exp(i*(nq(n)-n0)*fi);      % wq(n) is the relative weight of solution number n
	  ssw =ssw + abs(wq(n))^2;              
          om(n) = nq(n)^2;                    % frequency of solution number n
end % of this loop  
sqw = sqrt(ssw); 
for n = 1 : length(nq)
	  a(n) = wq(n)/sqw;                   % a is the expansion coefficient
end %                                  
%fprintf(' a = %8.4f ',a );fprintf('\n');       
                                              
psi=zeros(n2,NX+1); Spsi0 = zeros(NX+1);      % initialize eigenfunctions and their sum
for n = 1 : length(nq)
          for nx = 1 : NX+1
		     wpsi(n,nx) = sqrt(2/x1)*sin(nq(n)*pi*x(nx)/x1)*a(n) ; % weighted eigenfunction
                     Spsi0(nx) = Spsi0(nx) + wpsi(n,nx);   % total wave function at t = 0
          end % of nx-loop
end % of n-loop       
Psi0sq =abs(Spsi0).^2;                             % squared total wave function at t = 0          

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
axis([0 x1 0 20]);

hold on;
xlabel('x')
ylabel('|Psi|**2');
title('Superposistion of ground state and some excited states of a box');
%
t0 = 0; T =0.01; NT = 200;	                            % time vector
t = t0 : T/NT : T;
for nt = 1 : length(t)
           Psi = zeros(NX+1);
           for n = 1 : length(nq)
                     eksp =  exp(-1i*om(n)*t(nt));           % time exponential depends only on t and omega(n)
		     for nx = 1: NX+1    
				Psi(nx) = Psi(nx) + wpsi(n,nx)*eksp;
             end % of nx-loop
           end % of n-loop
	   s = 0;
           for nx = 1 : NX+1
                      Psisq(nx)=abs(Psi(nx))^2;
		      s=s+x(nx)*Psisq(nx);
           end % of nx-loop 
           expectationvalue = s*(x1-x0)/NX;
set(p,'XData',x,'YData',Psisq)                              % changes the curve
set(q,'XData',expectationvalue,'YData',0.1)                % moves the expectation value
drawnow
	   pause(0.01);                                     % increase if you want a "slower" animation
end % of t-loop
%line(x,'color','r');
hold off;