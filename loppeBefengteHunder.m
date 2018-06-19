N = 6;
NA = N;
NB = 0;
hopper = randi([1, N], [1, 200]);
loppested = 1;

for dt = 1:200
      if NA(dt) >= hopper(dt)
          loppested = 1;
      else
          loppested = 0;
      end

   if loppested == 1
       NA(end+1) = NA(dt) - 1;
       NB(end+1) = NB(dt) + 1;
       loppested = 0;
   else
       NA(end+1) = NA(dt) + 1;
       NB(end+1) = NB(dt) - 1;
       loppested = 1;
   end
   
end

x = 1:(dt+1);

plot(x, NA/N, 'linewidth', 2);
axis([0 200 0 1]);
title('N = 6', 'FontSize', 16);
ylabel('N_{A}(t)/N', 'FontSize', 16);
xlabel('t (s)', 'FontSize', 14);
%Plotter med c = 1/N, for å få andel lopper på A (mellom 0 og 1).