void setup(){
  size(600, 600);
  background(#FF0000);
  
  // Define the pattern size
  float patternWidth = 75;
  float patternHeight = 50;
  
  // The grid will be calculated automatically...
  float columns = width / patternWidth;
  float rows = height / patternHeight;
  
  // Create 2 nested loops
  for(float x = 0; x < columns + 1; x ++){
    for(float y = 0; y < rows + 1; y ++){
      brush(x * patternWidth, y * patternHeight, patternWidth, patternHeight);
    }
  }
}

void brush(float x, float y, float w, float h){
  noStroke();
  fill(#FFFF00);
  rect(x + 10, y + 10, w - 20, h - 20);
  fill(#000000);
  ellipse(x + w, y + h, 20, 20);
}

