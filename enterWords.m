function list = enterWords()
list = {1};
i = 1;

while list{i-1} ~= '' || list{1} == 1
    list{i} = sprintf('Enter word [Press Enter to quit]:\n');
    i = i + 1;
end

end

