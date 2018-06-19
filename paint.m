function paint( matrix )
    colors = [1 1 1; 0 0 0];

    n = size(matrix, 2);
    m = size(matrix, 1);
    
    canvas = ones(m, n, 3);

    for i = 1:m
        for j = 1:n
            if matrix(i, j) == 2
                canvas(i, j, :) = [0 0 0];
            end
        end
    end

    
   image(canvas);
end