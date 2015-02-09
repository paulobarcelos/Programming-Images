import ddf.minim.analysis.*;
import ddf.minim.*;
float energy;
Minim       minim;
AudioPlayer jingle;
FFT         fft;
color[] colors = {#751764, #E62598, #EF5C80, #F79368};

void setup()
{
  size(900, 900);
  
  // Paint the background
  background(#040930);

  //Array with color values
  

  minim = new Minim(this);
  jingle = minim.loadFile("sound.mp3", 256);
  jingle.loop();
  fft = new FFT( jingle.bufferSize(), jingle.sampleRate() );

}

void draw(){
    
  fft.forward( jingle.mix );  
  energy = fft.getBand(10) * 10;
  //color[] colors = {#040930, #751764, #E62598, #EF5C80, #F79368};
 
  // Draw an animated circle, using the number of frames as the x position
  //fill(#6C5B7B);
  ellipse (450, 450, energy*30, energy*30); 
  strokeWeight(2);
  strokeCap(SQUARE);

  //Makes stroke color random
  int arrayIndex = (int)Math.round((random(0, 3)));
  
  stroke ( colors[arrayIndex]);
 // fill (#040930); 
noFill ();

 // stroke ( random(255), random(255), random(255), random(255));
 // stroke (#040930, #751764, #E62598, #EF5C80, #F79368);

}

import processing.pdf.*; 
void keyReleased() {
  if (key == 's') {
    save("image.png");
  }
  // When 'B' or 'b' is pressed,
  // start recording to the PDF 
  if (key == 'B' || key == 'b') {         
    beginRecord(PDF, "image.pdf");
    // Optionally, you can clear the background before drawing to the PDF
    background(#343838);
  }
  // When 'E' or 'e' is pressed,
  // stop recording the PDF and
  if (key == 'E' || key == 'e') {
    endRecord();
  }
}
