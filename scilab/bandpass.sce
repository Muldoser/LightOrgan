//frequency order must be odd
[LD_coeff,amplitude,f] = wfir("bp",1601,[0.05 0.125],"hm", [0 0]);

// Transferfunctie via polynoom
LD_polynoom = poly(LD_coeff, 'z', 'coeff');

// z-coeff omzetten naar 1/z coeff
LD_functie = horner(LD_polynoom, 1/%z);

//werken met discrete waardes door 'd'
LD_lineair = syslin('d', LD_functie);

//filter test
LD_output = flts(Frequentie_FFT, LD_lineair);

//subplot(221);
//plot(Fv,Frequentie_FFT(1:n), "g");
subplot(223);
plot(f*16000, amplitude*500, "r");
