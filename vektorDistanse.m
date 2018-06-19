
%funksjon som tek inn to vektorar som argument
% og reknar ut den euklidske avstanden
function  [EuklidDistanse]= vektorDistanse(p,q)

n=length(p);

m=length(q);

tot=0;

for i = 1:n
    
    d = (p(i)-q(i))^2;
    
    tot = tot +d;
end

EuklidDistanse = sqrt(tot);

end % end funktion