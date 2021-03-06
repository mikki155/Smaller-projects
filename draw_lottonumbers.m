function lottonumbers = draw_lottonumbers(draws, balls,rows)

% A function that draws 'draws' random integers without replacement between 1 and
% 'balls', i.e. a random lotto sequence
% INPUT PARAMETERS
%   draws: # of balls drawn (in norwegian lotto this is 7)
%   balls: # of balls, i.e. # of possible numbers (in norwegian lotto this is 34)
%   rows:  # of lottorows (in norwegian lotto this is normally 10)
% OUTPUT PARAMETERS
%   lottonumbers: a matrix with 'rows' rows, where the rows are the
%              lotto-combinations you play

lottonumbers = zeros(rows,draws);
for i=1:rows
     temp_combination = randsample(balls,draws,'false');
        % draw 'draws' integers between 1 and 'balls'
     lottonumbers(i,:) = sort(temp_combination);
        % sort the drawn lottosequence in ascending order
end