#Schematics

In deze folder zitten alle screenshots gemaakt in Multisim. De filters zijn hierin uitgewerkt.

De filters die we hebben gebruikt zijn:

    * Een low-pass filter om de lage frequenties door te laten: cut-off frequentie van 750Hz
        * Formule fc = 1/2πRC komt uit op een weerstandswaarde van 220Ω en een condensator van 1µF
    * Een band-pass filter om de middelmatige frequenties op te vangen: frequenties tussen 800Hz en 2kHz
        * R1: 1990Ω C1: 100nF - R2: 79618Ω C2:1nF 
    * Een high-pass filter om alle frequenties boven 800Hz door te laten
        * R: 750Ω C: 0.1µF