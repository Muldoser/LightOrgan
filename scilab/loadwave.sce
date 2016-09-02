// .wav file destination
spirit="D:\Users\michi\Documents\SourceTree\LightOrgan\scilab\leeroy.wav";

// read .wav-file: y = 
[y,Fs,bits] = wavread(spirit);

playsnd(y,Fs);

plot(y);
