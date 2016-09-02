// start over
clf();
clear();

// .wav file destination
rainbow="D:\Users\michi\Documents\SourceTree\LightOrgan\scilab\rainbow.wav";

// read .wav-file
[y,Fs,bits] = wavread(rainbow);

playsnd(y,Fs);

plot(y);
