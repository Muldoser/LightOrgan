[LD_coeff,amplitude,f] = wfir("lp",1600,[0.047 0],"hm", [0 0]);

// Transferfunctie via polynoom
LD_polynoom = poly(LD_coeff, 'z', 'coeff');

// z-coeff omzetten naar 1/z coeff
LD_functie = horner(LD_polynoom, 1/%z);

//werken met discrete waardes door 'd'
LD_lineair = syslin('d', LD_functie);

//filter test
LD_output = flts(Frequentie_FFT, LD_lineair);

//subplot(221);
plot(Fv,Frequentie_FFT(1:n), "g");
//subplot(222);
plot(f*16000, amplitude*500, "r");
