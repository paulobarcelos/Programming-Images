void setup () {
  size(800, 800);
  frameRate(20);
 background(#0D1B26);
 
 /*for(float i  = 0; i < 20; i++){
    noFill();
    strokeWeight(2);
    stroke(#EAAAA2);
    float x = random(width);
    float y = random(height);
    rect(x, y, x/4, y/4, 10, 10, 10, 10);
 }*/
}

void draw() {
  updateMic();
  
  if (mic > 0.2) {
    background(#0D1B26);
  }
 smooth();
  fill(#0D1B26);
  ellipse(width/2, height/2, 60, 60);
   
  noFill();
  strokeWeight(2);
  stroke(#EAAAA2);
  float pulseSpeed = 0.002;
  float pulse = (sin((float)millis() * pulseSpeed) + 1) * 0.5;
  ellipse (width/2, height/2, 5+(pulse * 25), 5+(pulse * 25));
  
  if(frameCount % 5 == 0){
    noFill();
    strokeWeight(2);
    stroke(#EAAAA2);
    float x = random(width);
    float y = random(height);
    rect(x, y, x/4, y/4, 10, 10, 10, 10); 
  }

   

   
   fill(#000000);
   rect(0,0, width, 30);
   fill(#FFFFFF);
   rect(0,0, width * mic, 30);
   
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

   
   
   
 

