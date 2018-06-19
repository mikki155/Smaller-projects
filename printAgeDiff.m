function printAgeDiff(vec)
%denne funksjonen forutsetter funksjonen "findAge(...)"
for i = 1:length(vec)-1
   if findAge(vec(i).bYear, vec(i).bMonth, vec(i).bDay) == findAge(vec(i+1).bYear, vec(i+1).bMonth, vec(i+1).bDay )
       fprintf('%s %s is at the same age as %s %s\n', vec(i).fName, vec(i).lName, vec(i+1).fName, vec(i+1).lName);
   elseif findAge(vec(i).bYear, vec(i).bMonth, vec(i).bDay) >= findAge(vec(i+1).bYear, vec(i+1).bMonth, vec(i+1).bDay)
       fprintf('%s %s is older than %s %s\n', vec(i).fName, vec(i).lName, vec(i+1).fName, vec(i+1).lName);
   else
       fprintf('%s %s is younger than %s %s\n', vec(i).fName, vec(i).lName, vec(i+1).fName, vec(i+1).lName);
   end
end

end

