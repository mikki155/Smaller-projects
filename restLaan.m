function avdrag = restLaan(laanBelop, renteFot, antallTerminer, termin)

while termin >= 0
    a = termBelop(laanBelop, renteFot, antallTerminer);
    avdrag = a - rente(laanBelop, renteFot);
    laanBelop = laanBelop - avdrag;
    termin = termin - 1;

end

