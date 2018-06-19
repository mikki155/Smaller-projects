function list = dice(N, M)
list = [];

for i = 1:N
    list(end+1) = randi(M);
end


end

