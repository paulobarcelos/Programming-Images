void setup(){
  size(600, 600);
  
  // This is a "variable". Variables are used to store a value
  // that can be used later;
  float size = 100;
  float space = 150;
  
  // Paint the background
  background(#BF4D28);
  
  // Set the stroke color 
  strokeWeight(10);
  
  stroke(#E6AC27);
  ellipse(150, space, size, size);
  
  stroke(#F6F7BD);
  ellipse(300, space, size, size);
  
  stroke(#80BCA3);
  ellipse(450, space, size, size);
  
  // Set fill color of the shapes
  noStroke();
  
  fill(#E6AC27);
  ellipse(150, space * 2, size, size);
  
  fill(#F6F7BD);
  ellipse(300, space * 2, size, size);
  
  fill(#80BCA3);
  ellipse(450, space * 2, size, size);
  
  // Control opacity (0 - 255)
  fill(#FFFFFF, 10);
  ellipse(150, space * 3, size, size);
  
  fill(#FFFFFF, 100);
  ellipse(300, space * 3, size, size);
  
  fill(#FFFFFF, 255);
  ellipse(450, space * 3, size, size);
}
