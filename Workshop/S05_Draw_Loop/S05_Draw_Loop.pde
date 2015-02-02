void setup(){
  size(600, 600);
}

void draw(){
  background(#F67280);
  
  // Draw a "static" circle
  fill(#C06C84);
  ellipse(100, 100, 50, 50);    
  
  // Draw an animated circle, using the number of frames as the x position
  fill(#6C5B7B);
  ellipse(frameCount, 200, 50, 50); 
  
  // "Follow" the mouse
  fill(#F8B195);
  ellipse(mouseX, mouseY, 50, 50);   
}

