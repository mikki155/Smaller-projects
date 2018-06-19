function phone = most_highscores(scores)
phone = 0;
vec = zeros(1, r);

vec(:) = scores(:, 1);

sort(vec);
count = 1;
recount = 0;
for i = 1:length(vec)-2
    if scores(i, 1) == scores(i+1, 1)
        count = count + 1;
        tmpph = scores(i, 1);
        if scores(i+1, 1) ~= scores(i+2, 1) && count>recount
            recount = count;
            count = 1;
            temp1 = tmpph;
            phone = tmpph;
        elseif scores(i+1, 1) ~= scores(i+2, 1) && count == recount
            count = 1;
        elseif scores(i+1, 1) == scores(i+2, 1) && recount == 0
            phone = tmpph;
        elseif scores(i+1, 1) == scores(i+2, 1) && recount > 0
            phone = temp1;
        end
    end
end
end

