void setup(){
  size(600, 600);
  background(#424254);
  frameRate(30);
}

void draw(){
  // Just add this line to the begining of draw()
  // it will calculate the audio input.
  updateMic();
  
  // Calculate a circular motion
  float x = width/2 + sin((float)millis() * 0.001) * 200;
  float y = height/2 + cos((float)millis() * 0.001) * 200;
  
  // Just use "mic" to reference the microphone data
  float sizeOuter = 10 + mic * 300;
  float sizeCenter = mic * 300;
  
  strokeWeight(2);
  
  stroke(#E8CAA4);
  fill(#CC2A41);
  ellipse(x, y, sizeOuter, sizeOuter);
  
  stroke(#E8CAA4);
  fill(#CC2A41);
  ellipse(width/2, height/2, sizeCenter, sizeCenter);  
  
}




// Analyse microphone data.
// (Just copy and paste this whole block if you want
// to use this functionality)
import ddf.minim.*;
Minim minim;
AudioInput lineIn;
float mic = 0;
boolean micInited = false;
void updateMic(){
  if(!micInited){
    micInited = true;
    // Start capturing microphone data
    minim = new Minim(this);
    lineIn = minim.getLineIn();
  }
  float data = lineIn.left.get(0);
  if(data > mic) mic = data;
  mic -= ((float)frameRate /1.0) * 0.001;
  if(mic < 0) mic = 0;
}

