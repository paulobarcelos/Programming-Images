void setup(){
   // Load the SVG 

  
  size(1920, 1080);
}
  void draw(){
  background(#000000); 
  

  if(mousePressed == false){
    // Generate a number that "pulses" from 0 to 1, with controllable speed
    float pulseSpeed = 0.01;
        float pulseSpeed2 = 0.001;
    float pulse = (sin((float)millis() * pulseSpeed) + 1) * 2;
    float pulse2 = (sin((float)millis() * pulseSpeed2) + 1) * 1;
   float speed = dist(mouseX, mouseY, pmouseX, pmouseY);
   float size = dist(mouseY, mouseX, pmouseY, pmouseX);
  
    // Use the pulse to control different properties of the brush...
    
    // The x position will go from one side of the screen to the other
   
    
    // Size will change over time
    brush(mouseX, mouseY, speed * 6, #000000); 
   brush3(mouseX, mouseY, speed * 5, #000000);   
   brush2(mouseY, mouseX, speed * 1, #000000); 
    
     
    
  }
   
 //  fill(#ffffff);
 // ellipse(mouseX, mouseY, speed);

   
  if(keyPressed == false && key == 'c'){
    background(#857323);
    
  }
  
  }

void brush(float x, float y, float size, color col){
  noStroke();
  
  fill(#F0FF84);  
  ellipse(mouseY, mouseX, size, size);  
}
void brush2(float speed, float pulse2, float size, color col){
  noStroke();
  
  fill(#ffffff);  
  ellipse(mouseX, mouseY, size, size); 

}

void brush3(float x, float y, float size, color col){
  noStroke();
  
  fill(#000000);  
  ellipse(mouseY, mouseX, size, size);  
}

