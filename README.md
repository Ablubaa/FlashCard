Hej 
Jeg har kigget på din lydfil og problemet er at lydfilen er i mono.

Måske kan du lave din mono fil om til en stereo? Ellers må du finde en anden lydfil.

Nice nok program i har lavet ;)



// https://processing.org/reference/libraries/sound/SoundFile.html
import processing.sound.*;
SoundFile file;

void setup() {
  size(640, 360);
  background(255);
    
  // Load a soundfile from the /data folder of the sketch and play it back
  file = new SoundFile(this, "sample.mp3");
  file.play();
}      

void draw() {
}
