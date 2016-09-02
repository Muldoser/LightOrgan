# LOG

### Simulation in Scilab

* [Audio info](https://help.scilab.org/doc/5.5.2/en_US/section_d11cd0f9e362390f953e7199c5bb4b3a.html)
* Opties zijn `auread`, `loadwave` en `wavread`.
* Beide `wavread` en `loadwave` gebruiken een .wav file als input. 
   - `auread` maakt gebruik van een .au file. .au is Unix-gerelateerd, dus wij zullen eerder voor .wav gaan. 
   - `loadwave` geeft een matrix en vectors als output.
   - `wavread` geeft een output in `y` (gesamplede data), `Fs` of frequentie in Hertz en `bits` of het aantal bits per sample gebruikt om de data in de file te encoden. 
* We gebruiken momenteel 'leeroy jenkins' als audio file, maar heeft een te hoge amplitude