void setup(){
  size(600, 600);
  background(#C02942);
}

void draw(){
  // On every frame, we will draw a semi-transparent rectangle in
  // whole screen. This will create the effect that the drawing is
  // slowly fading away.
  noStroke();
  fill(#C02942, 4);
  rect(0,0, width, height);
  
  if(mousePressed == true){
    // Calculate the current mouse speed by checking the distance
    // of the current pointer to position to the last one.
    float speed = dist(mouseX, mouseY, pmouseX, pmouseY);
    
    brush(pmouseX, pmouseY, speed);    
  }
   
  if(keyPressed == true && key == 'c'){
    background(#C02942);
  }
}

void brush(float x, float y, float size){
  strokeWeight(2);
  stroke(#D95B43); 
  fill(#ECD078);  
  ellipse(x, y, size, size);  
}

