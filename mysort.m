function outv = mysort(vec)

for i = 1:length(vec)-1
    low = i;
    for j = i + 1:length(vec)
        if vec(j)<vec(low)
            low = j;
        end
    end
    temp = vec(i);
    vec(i) = vec(low);
    vec(low) = temp;
end
outv = vec;

end

