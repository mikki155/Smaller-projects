function bin = des2bin(decimal)
bin = 0;
if decimal == 0
    bin = 0;
end

while decimal > 0
    if decimal <= 1
    bin = 1; 
    return
    end

    bin = bin + ceil(rem(des2bin(decimal/2)));

end

end

