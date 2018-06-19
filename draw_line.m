function M = draw_line( M, x0, y0, x1, y1 )

    s = max(size(M, 1), size(M, 2));

    dx = (x1 - x0) / s;
    dy = (y1 - y0) / s;

    for k = 0:s
        i = round(y0+round(k*dy));
        j = round(x0+round(k*dx));
        
        if i > size(M, 1) || j > size(M, 2)
            break;
        end
        
        M(i, j) = 2;
    end
    

end

