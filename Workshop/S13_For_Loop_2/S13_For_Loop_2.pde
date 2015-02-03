void setup(){
  size(600, 600);
  background(#FF0000);
  
  // Add a variable for control the number of iterations
  float total = 10;
  
  for(float i = 0; i < total; i ++){
    
    // If we divide the current loop number by the total number
    // of loops, we will get a number from 0 to 1. This is a 
    // great way of controlling things independent of the number
    // of loops.
    float index = i / total; // index is a number 0 - 1
    
    brush(width/2, height/2, index * 600);
    
  }
}

void brush(float x, float y, float size){
  noStroke();
  fill(#FFFF00, 100);
  ellipse(x, y, size, size);
}

