v = 1000;
count = zeros(1, v);

for i=1:v
    vec = draw_lottonumbers(7, 34, 1);
    for j=1:7
       if vec(j) == 34
          count(i) = count(i) + 1;
       end
    end
end
mean(count)