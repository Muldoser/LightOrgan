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

y_size = length(y);
y2_size = length(y2);

playsnd(y2);

subplot(211);
plot(y);
subplot(212);
plot(y2, "r");
