%alternativ til vektorDistanse


function EuklidDistanse = alternativEuklidDistanse(p,q)

EuklidDistanse = sqrt(sum(p-q).^2)

end
