function rVec = alleRundeTider(passeringsTider)

[rad, kol] = size(passeringsTider);
rVec = [];
for i = 1:rad-1
    rVec(end+1) = rundeTid(passeringsTider(i,:), passeringsTider(i+1, :))
end

end

