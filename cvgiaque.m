T = [15 20 25 30 35 40 45 50 60 70 80 90 100 110 120 130 140 150 160 170 180 190 200 210 220 230 240 250 260 270 280 290 298 300];
Cv = [0.022 0.054 0.112 0.203 0.332 0.5 0.698 0.912 1.375 1.846 2.298 2.714 3.094 3.422 3.704 3.943 4.165 4.361 4.536 4.69 4.823 4.938 5.039 5.122 5.198 5.268 5.329 5.383 5.436 5.483 5.523 5.562 5.592 5.599];

thetaE = 285;
Tkont = 0:0.1:300;
cVm = (3.*8.314.*(thetaE./Tkont).^2).*((exp(thetaE./Tkont))./(exp(thetaE./Tkont)-1).^2);

for i=1:length(Cv)
   Cv(i) = Cv(i)*4.184;
end

plot(T, Cv, '*', Tkont, cVm);
xlabel('Temperatur, T/(K)');
ylabel('c_{Vm}/(J K^{-1} mol^{-1})');
grid on;
