function vectormin = minimum(vector)
vectormin = vector(1); %definerer en initialverdi i vektoren
    for i = 2:length(vector)
        if vector(i) > vector(1);
            vectormin = vector(1);
        else
            vectormin = vector(i);
    end
    end
end