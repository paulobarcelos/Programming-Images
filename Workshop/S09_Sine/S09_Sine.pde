// For a visual reference of how the Sine works,
// see http://i.imgur.com/c9P9FPl.gif


void setup(){
  size(600, 600);
  background(#FFFFFF);
}

void draw(){
  if(mousePressed == true){
    // Generate a number that "pulses" from 0 to 1, with controllable speed
    float pulseSpeed = 0.005;
    float pulse = (sin((float)millis() * pulseSpeed) + 1) * 0.5;

    // Use the pulse to control different properties of the brush...
    
    // The x position will go from one side of the screen to the other
    brush(pulse * width, mouseY, 70, #AAAAAA);
    
    // Size will change over time
    brush(mouseX, mouseY, pulse * 100, #000000);    
  }
   
  if(keyPressed == true && key == 'c'){
    background(#FFFFFF);
  }
}

void brush(float x, float y, float size, color col){
  strokeWeight(2);
  stroke(col); 
  fill(#FFFFFF);  
  ellipse(x, y, size, size);  
}

