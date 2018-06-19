nbar = 5;
nsbar = 5;
r = asinh(sqrt(nsbar));
x = 0:0.01:(1\pi);
Obaraplus = sqrt(nbar)*cos(x)+ 1/2 ;
Obaraminus = sqrt(nbar)*cos(x) - 1/2;
Obaraavg = sqrt(nbar)*cos(x);

T = [x, fliplr(x)];
Y = [Obaraplus, fliplr(Obaraminus)];
fill(T, Y, 'g');

hold on

plot(x, Obaraavg, 'r', 'LineWidth', 1.8);

