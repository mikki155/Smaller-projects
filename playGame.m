function points = playGame(answers, puzzles)
count = length(puzzles);
i = 1;
points = 0;
while count>0
    fprintf('Puzzel word: %s', puzzles{i});
    count = count - 1;
    s = sprintf('Guess word?');
    if s == answers{i}
        fprintf('You answered correctly!');
        points = points + 1;
    else
        fprintf('You answered incorrectly! The answer should be %s', answers{i});
    end
    i = i + 1;
end


end

