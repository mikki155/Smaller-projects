function tverr = d2sum(n)

tall = num2str(n);
tverr = 0;

for i = 1:length(tall);
    tverr = tverr + str2num(tall(i));
end

end

