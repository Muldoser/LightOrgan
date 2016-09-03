# LOG

### Simulation in Scilab

* [Audio info](https://help.scilab.org/doc/5.5.2/en_US/section_d11cd0f9e362390f953e7199c5bb4b3a.html)
* [Signal info](https://help.scilab.org/docs/6.0.0/en_US/section_dbbac6be408104de3049eddefaf6b9c9.html)
* Opties zijn `auread`, `loadwave` en `wavread`.
* Beide `wavread` en `loadwave` gebruiken een .wav file als input. 
   - `auread` maakt gebruik van een .au file. .au is Unix-gerelateerd, dus wij zullen eerder voor .wav gaan. 
   - `loadwave` geeft een matrix en vectors als output.
   - `wavread` geeft een output in `y` (gesamplede data), `Fs` of frequentie in Hertz en `bits` of het aantal bits per sample gebruikt om de data in de file te encoden. 
* We gebruikten initieel 'leeroy jenkins' als audio file, maar heeft een te hoge amplitude.
* Deze hebben we vervangen door de 'double rainbow' van het bekende [youtube](https://www.youtube.com/watch?v=99E9fDgZZuE) filmpje.
* Verder over wavread, de description:

>- Utility function to read .wav sound file. wavread(wavfile) loads a sound file specified by the string wavfile, returning the sampled data in y. Amplitude values are in the range [-1,+1]. Supports multi-channel data in the following formats: 8-bit mu-law, 8-, 16-, and 32-bit linear, and floating point.
>- [y,Fs,bits]=wavread(wavfile) returns the sample rate (Fs) in Hertz and the number of bits per sample used to encode the data in the file.
>- wavread(wavfile,n) returns the first n samples from each channel.
>- wavread(wavfile,[n1,n2]) returns samples n1 to n2.
>- wavread(wavfile,'size') returns the size of the audio data contained in the file in place of the actual audio data, returning the vector as [channels samples].
>- wavread(wavfile,'info') returns information about the audio data contained in the file in place of the actual audio data, returning the vector as [data format, number of channels, samples per second per channel, estimate of bytes per second needed, byte alignment of a basic sample block, bits per sample, length of sound data in bytes, bytes per sample (per channel)].

* Wanneer we ons eerste script lossen op onze 'rainbow', zien we in de variabelen dat het bestand gesampled wordt tegen een frequentie van 44100 Hz met 16 bits per sample. Dit is redelijk standaard.
* Een plot van deze `y` output geeft

<img src="./img/scilab/rainbow-plot1.gif"/>

* Met `intdec` kunnen we een nieuwe samplefrequentie instellen voor ons `y` signaal.
* Wanneer we dit signaal plotten zien we dat het 2e signaal (rood) aanzienlijk minder samples bevat dan het eerste signaal.

<img src="./img/scilab/rainbow-16kHz.gif"/>

* Beide plots onder elkaar geplaatst:

<img src="./img/scilab/rainbow-double.gif"/>

* Size van blauw signaal 1, `y` = 150 912
* Size van rood signaal 2, `y2` = 54 752
