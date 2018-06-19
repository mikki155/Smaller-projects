function [newlistOne, newlistTwo] = randomSequence(listOne, listTwo)
newlistOne = {};
newlistTwo = {};
temp = randperm(length(listOne));

for i = 1:length(listOne)
    newlistOne{i} = listOne{temp(i)};
    newlistTwo{i} = listTwo{temp(i)};
end

end

