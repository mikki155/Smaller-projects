fid = fopen('tab254.dat', 'r');
A = zeros(254);
j = 1;
i = 1;

while foef == 0
   A(i, j) = fgetl(8*(1+256*j));
   j = j + 1;
   if j == 254
       i = i + 1;
       j = 1;
   end
    
end

