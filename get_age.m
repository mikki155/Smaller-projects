function age = get_age(person)

[Y M D] = datevec(now);

if M > person.day_of_birth.month
    age = Y-person.day_of_birth.year - 1;
elseif M == person.day_of_birth.month && person.day_of_birth.date >= D
    age = Y-person.day_of_birth.year;
else
    age = Y-person.day_of_birth.year - 1;
end


end

