% matlab_program_ex9.m (exercise 9)
% One-dimensional confining potential,
% solved through matrix diagonalization
% hbar = m = 1
   
close all;  % removes plots from previous run

% Number of grid points: N+1
N = 160;   % Number of steps between Xmin and Xmax
% if potential number 1 or 2 or 3:
% Xmax = 10; Xmin = -Xmax; %% (symmetric range)

%% if potential number 6:
%  Range (from zero to XL, potential infinite for x<0):
%XL = 10; 
%Xmax = XL*(N+1.0)/(N+2.0); Xmin =XL/(N+2.0); 

%  If Potential number 4 or 5 (Box potential without or with modified bottom), 
%  choose amplitude of modification  (v0); and number of periods   (nL):
nL=5; Xmin=-nL/2.0*N/(N+2); Xmax=-Xmin;
v0 = 15; 
% Step size:
dx = (Xmax - Xmin)/N;
% Position x is array with values Xmin, Xmin+dx, ... , Xmax:
x = (Xmin):dx:(Xmax);

% Choose type of potential by removing one commmenting % sign:

% potential number 1: Harmonic oscillator:
%V = 0.5*x.^2; 
% potential number 2: Symmetric double well:                     
% V = 0.01*x.^4-0.5*x.^2+6.25;  
% V=x.^4;
% potential number 3: V-shaped potential:      
% V = abs(x);                       
% potential number 4: Ordinary box (use nL=1 above):
% V=0.00*x;
%
% Potential number 5: Box potential with sinusoidal bottom; 
% amplitude of the cosine is v0; number of periods of the cosine is nl:
%
V = v0*(1+cos(2*pi*(x+nL/2.0))).^2;
%
% potential number 6: linear potential, infinite for x<0:
%    V = x;

% Diagonal elements
d = 1/dx^2+V;
% Off-diagonal elements
e = -1/(2*dx^2);
% Setting up the Hamiltonian matrix, first diagonal terms:
H = diag(d);
% Next, include off-diagonal elements:
H(2:(N+1),1:N) = diag(e*ones(1,N)) + H(2:(N+1),1:N);
H(1:N,2:N+1) = diag(e*ones(1,N)) + H(1:N,2:N+1);
% Diagonalizing the matrix solves the Schrödinger equation.
% The command [S,D] = eig(H) produces matrices of eigenvalues (D) and 
% eigenvectors (S) of matrix H, so that H*S = S*D. Matrix D is the 
% canonical form of H - a diagonal matrix with H's eigenvalues on 
% the main diagonal. Matrix S is the modal matrix - its columns are 
% the eigenvectors of H:
[S,D] = eig(H);
% We store the eigenvalues in the array "eigenvalues":
eigenvalues = diag(D);
% Plot wavefunction for lowest eigenvalue (n = 1):
% n = 1;
% plot(x,(S(:,n)')); 
% Plot absolute square of wavefunction nr n:
% plot(x,(S(:,n)').^2); 
% To display several wavefunctions in one plot:
null=zeros(1,N+1);
for n=1:3
 figure; %two wave functions in each of these figures
 plot(x,(S(:,2*n-1)'),x,(S(:,2*n)'),x,null);
end 
xlabel('x=q/L');%print ut denne
%%%% plot(x,(1000*S(:,1)'),x,(1000*S(:,2)'),x,(1000*S(:,3)'),x,(1000*S(:,4)'),
%%%% x,V-3*v0,x,null);
%%axis([-1 1 -3*v0 90]);
%%%%%%%%%% print -dpng fig42159-9-8.png   % creates png-file (for LINUX)
% To display several wavefunctions squared in one plot:
% plot(x,(S(:,1)').^2,x,(S(:,2)').^2,x,(S(:,3)').^2,x,(S(:,4)').^2);
% Plot the potential V(x) in a new figure:
% First make arrays for each of the eigenvalues:
e1=eigenvalues(1)*ones(1,N+1);
e2=eigenvalues(2)*ones(1,N+1);
e3=eigenvalues(3)*ones(1,N+1);
e4=eigenvalues(4)*ones(1,N+1);
e5=eigenvalues(5)*ones(1,N+1);
e6=eigenvalues(6)*ones(1,N+1);
e7=eigenvalues(7)*ones(1,N+1);
e8=eigenvalues(8)*ones(1,N+1);
e9=eigenvalues(9)*ones(1,N+1);
e10=eigenvalues(10)*ones(1,N+1);
horisontal=300*ones(1,N+1);

% figure;  %plot potential alone
% plot(x,V);
% xlabel('x=q/L')
% ylabel('V/V_0')
% print -dpng name.png % creates png-file (for LINUX)

figure;      % plot of v(x) and the first 10 eigenvalues:
% plot(x,V,x,horisontal);
 plot(x,V,x,e1,x,e2,x,e3,x,e4,x,e5,x,e6,x,e7,x,e8,x,e9,x,e10);
xlabel('x=q/L');
%%print -dpng name2.png % creates png-file (for LINUX)

% Plot (all) the eigenvalues in a new figure:
     figure;
 plot(eigenvalues); %print ut denne
 xlabel('n');
 ylabel('eigenverdi');


% print the first eleven eigenvalues and eigenvalue no 20:

for i=1:9
fprintf('  E%1d  = %4.6f \n', i,eigenvalues(i));
end
fprintf('  E10 = %4.6f \n',eigenvalues(10));
fprintf('  E11 = %4.6f \n',eigenvalues(11));
fprintf('  E20 = %4.6f \n',eigenvalues(20));
% print eigenvalues* 2/pi^2, relevant for box:
fprintf('Eigenvalues relevant for box: \n ');
fprintf(' E1*2/pi^2 = %4.6f \n  E2*2/pi^2 = %4.6f \n E10*2/pi^2 = %4.6f \n',eigenvalues(1)*2/pi^2,eigenvalues(2)*2/pi^2,eigenvalues(10)*2/pi^2);


% xav=sum(x.*(S(:,1)').^2); % trapezoidal integration
% fprintf('\n xav = %4.6f',xav);