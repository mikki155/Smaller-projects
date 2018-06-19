x = 1:3;

y = [73 73.7 73.875];

plot(x, y, '*', 'LineWidth', 2);
title('Vekt sfa. uker', 'FontSize', 26);
xlabel('Uke', 'FontSize', 14);
ylabel('Vekt (kg)', 'FontSize', 14);
axis([0 3.5 72 75]);
grid on;