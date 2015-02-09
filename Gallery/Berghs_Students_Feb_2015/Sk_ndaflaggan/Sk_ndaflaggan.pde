PShape brushShape;
PShape stamp;

void setup (){
  size(800, 600);
  background(#000000);
  // Load the SVG 
  brushShape = loadShape("firebrush.svg");
  stamp = loadShape("kuken.svg");
 
fill(#0E477E);
noStroke();
rect(70, 70, 650, 495);
fill(#EAD50E);
rect(300, 70, 20, 20);
rect(325, 70, 20, 20);
rect(350, 70, 20, 20);
rect(300, 95, 20, 20);
rect(325, 95, 20, 20);
rect(350, 95, 20, 20);
rect(300, 120, 20, 20);
rect(325, 120, 20, 20);
rect(350, 120, 20, 20);
rect(300, 145, 20, 20);
rect(325, 145, 20, 20);
rect(350, 145, 20, 20);
rect(300, 170, 20, 20);
rect(325, 170, 20, 20);
rect(350, 170, 20, 20);
rect(300, 195, 20, 20);
rect(325, 195, 20, 20);
rect(350, 195, 20, 20);
rect(300, 220, 20, 20);
rect(325, 220, 20, 20);
rect(350, 220, 20, 20);
rect(300, 245, 20, 20);
rect(325, 245, 20, 20);
rect(350, 245, 20, 20);
rect(300, 270, 20, 20);
rect(325, 270 , 20, 20);
rect(350, 270, 20, 20);
rect(300, 295, 20, 20);
rect(325, 295, 20, 20);
rect(350, 295, 20, 20);
rect(300, 320, 20, 20);
rect(325, 320, 20, 20);
rect(350, 320, 20, 20);
rect(300, 345, 20, 20);
rect(325, 345, 20, 20);
rect(350, 345, 20, 20);
rect(300, 370, 20, 20);
rect(325, 370, 20, 20);
rect(350, 370, 20, 20);
rect(300, 395, 20, 20);
rect(325, 395, 20, 20);
rect(350, 395, 20, 20);
rect(300, 420, 20, 20);
rect(325, 420, 20, 20);
rect(350, 420, 20, 20);
rect(300, 445, 20, 20);
rect(325, 445, 20, 20);
rect(350, 445, 20, 20);
rect(300, 470, 20, 20);
rect(325, 470, 20, 20);
rect(350, 470, 20, 20);
rect(300, 495, 20, 20);
rect(325, 495, 20, 20);
rect(350, 495, 20, 20);
rect(300, 520, 20, 20);
rect(325, 520, 20, 20);
rect(350, 520, 20, 20);
rect(300, 545, 20, 20);
rect(325, 545, 20, 20);
rect(350, 545, 20, 20);

//Vertikala linjen
rect(70, 320, 20, 20);
rect(70, 345, 20, 20);
rect(70, 370, 20, 20);
rect(95, 320, 20, 20);
rect(95, 345, 20, 20);
rect(95, 370, 20, 20);
rect(120, 320, 20, 20);
rect(120, 345, 20, 20);
rect(120, 370, 20, 20);
rect(145, 320, 20, 20);
rect(145, 345, 20, 20);
rect(145, 370, 20, 20);
rect(170, 320, 20, 20);
rect(170, 345, 20, 20);
rect(170, 370, 20, 20);
rect(195, 320, 20, 20);
rect(195, 345, 20, 20);
rect(195, 370, 20, 20);
rect(220, 320, 20, 20);
rect(220, 345, 20, 20);
rect(220, 370, 20, 20);
rect(245, 320, 20, 20);
rect(245, 345, 20, 20);
rect(245, 370, 20, 20);
rect(270, 320, 20, 20);
rect(270, 345, 20, 20);
rect(270, 370, 20, 20);
rect(295, 320, 20, 20);
rect(295, 345, 20, 20);
rect(295, 370, 20, 20);
rect(375, 320, 20, 20);
rect(375, 345, 20, 20);
rect(375, 370, 20, 20);
rect(400, 320, 20, 20);
rect(400, 345, 20, 20);
rect(400, 370, 20, 20);
rect(425, 320, 20, 20);
rect(425, 345, 20, 20);
rect(425, 370, 20, 20);
rect(450, 320, 20, 20);
rect(450, 345, 20, 20);
rect(450, 370, 20, 20);
rect(475, 320, 20, 20);
rect(475, 345, 20, 20);
rect(475, 370, 20, 20);
rect(500, 320, 20, 20);
rect(500, 345, 20, 20);
rect(500, 370, 20, 20);
rect(525, 320, 20, 20);
rect(525, 345, 20, 20);
rect(525, 370, 20, 20);
rect(550, 320, 20, 20);
rect(550, 345, 20, 20);
rect(550, 370, 20, 20);
rect(575, 320, 20, 20);
rect(575, 345, 20, 20);
rect(575, 370, 20, 20);
rect(600, 320, 20, 20);
rect(600, 345, 20, 20);
rect(600, 370, 20, 20);
rect(625, 320, 20, 20);
rect(625, 345, 20, 20);
rect(625, 370, 20, 20);
rect(650, 320, 20, 20);
rect(650, 345, 20, 20);
rect(650, 370, 20, 20);
rect(675, 320, 20, 20);
rect(675, 345, 20, 20);
rect(675, 370, 20, 20);
rect(700, 320, 20, 20);
rect(700, 345, 20, 20);
rect(700, 370, 20, 20);
}

void draw(){
  if(mousePressed == true){
    // Draw the brush with a random size (half to double of original size)
    // and random rotation (0 to 180 degrees)
     if(mouseX < 700 && mouseX > 100){
       brush(mouseX, mouseY, random(0.5, 2), 0);
     }   
    
  }
    if(mouseY < 100 && mouseY > 700){
       brush(mouseX, mouseY, random(0.5, 2), 0);
     }   
    
  if(keyPressed == true){
    // 200 max X
    // -130 min x 
    shape(stamp, random(-200, 350),0 );
  }
    if(keyPressed == true){
    // 200 max X
    // -130 min x 
    shape(stamp, 0, random(-200 , 300) );
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
