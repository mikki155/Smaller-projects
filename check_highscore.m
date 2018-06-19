function place = check_highscore(points, scores)
place = -1;
for i = 1:length(scores)
    if points > scores(i)
        scores(i) = points;
        place = i;
    end
    
end

