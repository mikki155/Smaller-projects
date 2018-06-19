function move_tile(level, direction)
[r, k] = size(level);
[rad, kol] = find_empty(level);

if direction == 'u' && rad>1
    temp = level(rad-1, kol);
    level(rad-1, kol) = 0;
    level(rad, kol) = temp;
elseif direction == 'l' && kol>1
    temp = level(rad, kol-1);
    level(rad, kol-1) = 0;
    level(rad, kol) = temp;
elseif direction == 'd' && rad<4
    temp = level(rad+1, kol);
    level(rad+1, kol) = 0;
    level(rad, kol) = temp;
elseif direction == 'r' && kol<4
    temp = level(rad, kol+1);
    level(rad, kol+1) = 0;
    level(rad, kol) = temp;
end
    
end

