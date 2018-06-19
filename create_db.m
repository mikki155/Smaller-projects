function db = create_db(temp, rain, humidity, wind)

db = [];
for i = 1:length(temp)
   db(end+1) = struct('temp', temp(i), 'rain', rain(i), 'humidity', humidity(i), 'wind', wind(i)); 
end


end

