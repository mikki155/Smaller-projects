function a = termBelop(laanBelop, renteFot, antallTerminer)

a = (laanBelop*(1+renteFot)*(1-(1/(1+renteFot))))/(1-(1/(1+renteFot)^(antallTerminer)));

end

