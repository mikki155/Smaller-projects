function [start, stop] = strange_weather(temp, rain)
start = 0;
stop = 0;
j = 1;

for i = 1:length(temp)
    if temp(i)<0 && temp(i+1)<0 && rain(i+1)>rain(i)
        stop = i + 1;
        start = stop - j;
        j = j + 1;
    end
    
end

