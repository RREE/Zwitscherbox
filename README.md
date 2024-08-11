# Zwitscherbox

Ich will meine eigener Version des kommerziellen Produkts (Zwitscherbox)[https://www.relaxound.com/zwitscherbox] nachbauen.

Ein ähnliches Projekt einer Sprachbox findet sich hier (https://prilchen.de/bau-dir-eine-soundbox-die-bei-bewegung-startet/)

## Mechanics

Die Vorderfront soll aus echtem Holz sein, wenn möglich aus Eiche. Das liegen noch Reste im Keller

## Electronics

### Prozessor
Bevorzugt auf Basis rp2040, eventuell auch auf AVR8, oder dem neuen rp2350

### Näherungssensor / Bewegungsmelder

Der Bewegungsmelder HC-SR505 ist ein kleiner, passiver Infrarot-Sensor der Wärmestrahlung empfängt und auswertet. Er reagiert auf kleine Änderungen der Temperatur, beispielsweise wenn eine Person bis max. 3 Meter am Sensor vorbeigeht, in dem der am mittleren Schaltausgang ein High Level Signal von 3.3V ausgibt. Er selbst muss mit 4,5V bis 20V versorgt werden. Aufgrund der minimalen Größe und der energiesparenden Betriebsart, eignet sich der Sensor ideal für batteriebetriebene Anwendungen. Der Ruhestrom beträgt weniger als 60µA.

### Spieler

DFPlayer https://wiki.dfrobot.com/DFPlayer_Mini_SKU_DFR0299

Der DFPlayer Mini ist ein Mini-MP3-Player-Modul mit integriertem MicroSD-Kartenslot und Audio-Verstärker zum direkten Anschluss eines Lautsprechers. Das Teil ermöglicht die Ausgabe von Audio-Dateien direkt per Lautsprecher (4 oder 8 Ohm). Unterstützte Audioformate sind 
MP3, WMA und WAV (am besten funktioniert angeblich MP3).

### Lautsprecher

### Stromcversorgung

LiPo (vom Modellbau) oder Rest vom Rauchmelder (3 x 1,5V)

