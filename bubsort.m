function newvec = bubsort(vec)
n = length(vec);
swapped = true;

while swapped == true
    
swapped = false;
for i = 1:n-1
    if vec(i)>vec(i+1)
        tmp = vec(i);
        vec(i) = vec(i+1);
        vec(i+1) = tmp;
        swapped = true;
    end
end
end
newvec = vec;
end

