// start over
clf();
clear();
// .wav file destination
rainbow="D:\Users\michi\Documents\SourceTree\LightOrgan\scilab\rainbow.wav";

// read .wav-file
[y,Fs,bits] = wavread(rainbow);

// Go from 44.1kHz to 16kHz
conversion_factor = 16000/Fs;

// intdec changes sample rate for signal to our resampled 
y2 = intdec(y,conversion_factor);

// # samples in y
y_size = size(y,"*");
y2_size = size(y2, "*");


// Fast fourier transform transfers to its sinusoid components
Frequentie_FFT = abs(fft(y2));
//Geassocieerde frequentievector
Fv = 16000*(0:(y2_size/2))/y2_size;
n=size(Fv,"*");

playsnd(y2, 16000);

subplot(221);
plot(y/2);

subplot(222);
plot(y2/2, "r");

subplot(223);
plot(Fv,Frequentie_FFT(1:n), "g");
