function resultat = laguerre(x, n)

    if n <= 0
        resultat = 1;
    elseif n == 1
        resultat = 1-x;
    end
    
    resultat = (2*n-1-x)*(laguerre(x, n-1))-((n-1)^2)*(laguerre(x, n-2));

end

