function add_highscore(points, number, scores)
[r, k] = size(scores);
place = check_highscore(points, scores);

if place ~= -1
    temp = scores(place, 2);
    ph = scores(place, 1);
    scores(place, 1) = number;
    scores(place, 2) = points;
    while place < r
        ntmp = scores(place+1, 2);
        nph = scores(place+1, 1);
        scores(place+1, 1) = ph;
        scores(place+1, 2) = temp;
        temp = ntmp;
        ph = nph;
    end


end

