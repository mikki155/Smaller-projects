function val = number_in_list(number, list)

val = false;

for i = 1:length(list)
    if list(i) == number
        val = true;
    end
end

end

