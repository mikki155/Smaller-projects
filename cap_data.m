function result = cap_data(array, min_value, max_value)

n = length(array);
result = zeros(1, n);
for i = 1:n
    if min_value>array(i)
        result(i) = min_value;
        
    elseif array(i)>max_value
        result(i) = max_value;
    else
        result(i) = array(i);
    end
    
end
end
