void setup(){
  size(600, 600);
  background(#E2F7CE);
  
  // Try playing with different framerates
  //frameRate(10);
  //frameRate(4);
}

void draw(){
  // If mouse is pressed, call the brush command
  if(mousePressed == true){
    brush(mouseX, mouseY, 30);
    
    // You can draw multiple brushes at the same time
    //brush(mouseX - 40, mouseY, 10);
    //brush(mouseX + 40, mouseY, 10);
  }
   
  // If any key is pressed, clear the screen
  if(keyPressed == true){
    background(#E2F7CE);
  }
}

// Here we create our own brush command
void brush(float x, float y, float size){
  stroke(#91204D);
  noFill();
  
  ellipse(x, y, size, size);
  
}

