void setup(){
  size(600, 600);
  background(#FF0000);
  
  // Create a for loop
  for(float i = 0; i < 10; i ++){
    // inside of there, "i" will be a value from 0 to 10
    brush(i * 60, 300, 50);
    
  }
}

void brush(float x, float y, float size){
  noStroke();
  fill(#FFFF00);
  ellipse(x, y, size, size);
}

