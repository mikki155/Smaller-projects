T = [222.4 262.4 283.7 306.4 331.3 358.5 413 479.2 520 879.7 1079.7 1258];
c = [0.762 1.146 1.354 1.582 1.838 2.118 2.661 3.28 3.631 5.29 5.387 5.507];
thetaE = 1325;
for i=1:length(c)
   c(i) = 4.184*c(i); 
end

Tkont = 0:0.1:1500;
cVm = (3.*8.314.*(thetaE./Tkont).^2).*((exp(thetaE./Tkont))./(exp(thetaE./Tkont)-1).^2);


plot(T, c, '*', Tkont, cVm);%Gjør om til kalorier.
xlabel('Temperatur, T/K');
ylabel('Varmekapasitet, c_{Vm}/(J K^{-1} mol^{-1})');
grid on;
