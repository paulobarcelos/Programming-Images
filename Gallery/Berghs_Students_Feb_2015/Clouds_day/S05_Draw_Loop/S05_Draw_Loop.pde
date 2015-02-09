// In this example, we will use 2D transformations to modify
// how we draw our shapes. For more information access see
// https://processing.org/tutorials/transform2d/

// Create 2 variables, one that will load the background image
// and one that will load brush vector
PImage bg;
PShape brushShape;

void setup() {
  size(600, 600);
 

  // Load the background image
  bg = loadImage("background.png");

  // Load the SVG 
  brushShape = loadShape("cloud.svg");
  

  // Paint the backgorund, by drawing the image on the top
  // left corner (0, 0)
  image(bg, 0, 0);
  

 
}

void draw() {
  
  fill(#FFFFFF);
  noStroke();
  ellipse(frameCount, 250, 10, 10);
  
  
  fill(#B8F0FF, 3);
  noStroke();
  rect(0,0, width, height - 100);
  
  
  if (mousePressed == true) {
    // Draw the brush with a random size (half to double of original size)
    // and random rotation (0 to 180 degrees)
    brush(mouseX, mouseY, random(0.5, 2), random(180));
  }

  if (keyPressed == true && key == 'c') {
    image(bg, 0, 0);
  }
}

void brush(float x, float y, float size, float angle) {
  // In order to roate the shape, we need to "rotate the whole world,
  // than draw into it".
  // We will use a "matrix" for that. It will let us make modifications
  // in the coordinate system, and discart them aftwards.

  // start pushing a new matrix
  pushMatrix();

  // Translate our starting point
  translate(x, y);

  // Rotate (convert from degrees to radians)
  rotate(random (0.2));

  // Scale our proportions
  scale(random (0.5));

  // Now we can draw the shape. Notice that we just draw it a 0x0
  // with it's original size.
  shape(brushShape, 0, 0, brushShape.height, brushShape.height);

  // Finally pop the matrix, so the "world" goes back to normal
  popMatrix();

  //fill(#FFFC8A);
  //ellipse(frameCount, 100, 50, 50);
  
}
