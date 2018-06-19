function [list, num] = mxcomp(A, B)
list = [];
num = 0;
for i = 1:length(A)
    if A(i)>B(i)
        list(end+1) = A(i);
    elseif B(i)>A(i)
        list(end+1) = B(i);
    else
        list(end+1) = 0;
        num = num + 1;
    end
end

end

