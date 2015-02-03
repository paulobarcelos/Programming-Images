void setup(){
  size(600, 600);
  background(#FF0000);
  
  // Define our grid settings
  float columns = 10;
  float rows = 10;
  
  // Create 2 nested loops
  for(float x = 0; x < columns + 1; x ++){
    for(float y = 0; y < rows + 1; y ++){
      brush(x * 60, y * 60, 60);
    }
  }
}

void brush(float x, float y, float size){
  noStroke();
  fill(#FFFF00);
  ellipse(x, y, size, size);
}

