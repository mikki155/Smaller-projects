clear all;
%For v(1) = 0.1, er a_max = 1.9 grader, og T = 2s.
%v(1) = 0.5 gir a_max = 9 grader, og T = 2s.
%v(1) = 3 gir a_max = 59 grader, og T = 2s.
%v(1) = 5 gir a_max = 109 grader, og T = 2.5s.
%v(1) = 5.5 gir a_max = 129, og T = 2.75s.
%v(1) = 6 gir a_max = 149 grader, og T = 3s.
%For stor dt, vil a_max øke for hver periode. Lar en dt -> 0, vil etter
%hvert a_max gå mot en konstant. På disse likevektspunktene vil kulen bli
%"dratt" ned mot lavere potensial, og derfor er de ustabile.

a_max = [1.9 9 59 109 129 149];
T = [2 2 2 2.5 2.75 3];

plot(a_max, T, 'r')
xlabel('vinkelutslag (grader)')
ylabel('Svingetid [s]')
