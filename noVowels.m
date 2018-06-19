function newlist = noVowels(inList)
newlist = {};
for i = 1:length(inList)
   for j = 1:length(inList{i})
       if inList{i}(j) ~= 'a' || 'e' || 'i' || 'o' || 'u'
          newlist{i}(j) = inList{i}(j); 
       end
   end
end

end

