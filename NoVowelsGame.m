function NoVowelsGame()
fprintf('The NoVowels Game\n');
fprintf('=================\n');
fprintf('Player 2: Look away from the screen\n');
fprintf('Player 1: Write in a list of English words in lower-case\n');
enterWords()
puzzles = noVowels(list);
[answers, puzzles] = randomSequence(list, puzzles);

printNewlines(50);

playGame(answers, puzzles)

fprintf('You have got %d of %d points', points, length(answers))
end

