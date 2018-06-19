function stat = test_picture(table)
stat = true;
[rad, kol] = size(table);
if rad ~= kol
    stat = false;
elseif table > 255 || table < 0
    stat = false;
end



end

