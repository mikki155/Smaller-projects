function [finnes, rad, kol] = finnMonster(T, m)

T = randi(2, 10, 10) - 1;
finnes = false;

for rad = 1:(T(:, 1)-m(:, 1)+1)
    for kol = 1:(T(rad, :)-m(rad, :)+1)
        if isequal(T, m)
            finnes = true;
            return
        end
    end
end

end

