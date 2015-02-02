// In this example, we will use 2D transformations to modify
// how we draw our shapes. For more information access see
// https://processing.org/tutorials/transform2d/

// Variable that will hold the shape we will load
PShape brushShape;

void setup(){
  size(600, 600);
  background(#FFFFFF);
  
  // Load the SVG into the shape
  brushShape = loadShape("brush.svg");
}

void draw(){
  if(mousePressed == true){
    // Draw the brush with a random size (half to double of original size)
    // and random rotation (0 to 180 degrees)
    brush(mouseX, mouseY, random(0.5, 2), random(180));
  }
   
  if(keyPressed == true && key == 'c'){
    background(#FFFFFF);
  }
}

void brush(float x, float y, float size, float angle){
  // In order to roate the shape, we need to "rotate the whole world,
  // than draw into it".
  // We will use a "matrix" for that. It will let us make modifications
  // in the coordinate system, and discart them aftwards.
  
  // start pushing a new matrix
  pushMatrix();
  
  // Translate our starting point
  translate(x, y);
  
  // Rotate (convert from degrees to radians)
  rotate(radians(angle));
  
  // Scale our proportions
  scale(size);
  
  // Now we can draw the shape. Notice that we just draw it a 0x0
  // with it's original size.
  shape(brushShape, 0, 0, brushShape.height, brushShape.height);
  
  // Finally pop the matrix, so the "world" goes back to normal
  popMatrix();
}

