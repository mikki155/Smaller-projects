function vec = rand_list2(number)

vec = [];

for i = 1:number
    n = randi(number, 1);
    while number_in_list(number, vec) == n
        n = randi(number, 1);
    end
    vec(end+1) = n;

end

