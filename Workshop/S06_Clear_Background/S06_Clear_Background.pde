void setup(){
  size(600, 600);
}

void draw(){
  // Only paint the background if the mouse is not pressed
  if(mousePressed == false){
    background(#F67280);
  }
  
  fill(#C06C84);
  ellipse(100, 100, 50, 50);    
  
  fill(#6C5B7B);
  ellipse(frameCount, 200, 50, 50); 

  fill(#F8B195);
  ellipse(mouseX, mouseY, 50, 50);   
}

