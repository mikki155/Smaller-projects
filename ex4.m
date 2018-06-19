t = 0:0.1:10;
ye1 = -sin(t)/sqrt(2) + (1-0.5*sin(t)).^(0.5);
ye2 = -sin(t)/sqrt(2) -(1-0.5*sin(t)).^(0.5);
y = -sin(t)/sqrt(2);

T = [t, fliplr(t)];
Y = [ye1, fliplr(ye2)];
fill(T, Y, 'g');

hold on

delta1p = zeros(1, length(t));
delta1n = zeros(1, length(t));
for i = 1:length(t)
    delta1p(i) = 1/sqrt(2);
    delta1n(i) = -1/sqrt(2);
end

plot(t, y, 'r', 'LineWidth', 1.8);
hold on
plot(t, delta1p, '--');
hold on
plot(t, delta1n,  '--');
xlabel('t [s]');
ylabel('$\frac{I}{\sqrt{\hbar \omega / L}}$');
title('Plot of the average currents and fluctuations');
legend('$<I> \pm \Delta I$', '$<I>$', '$\pm \Delta I$ for vacuum');
