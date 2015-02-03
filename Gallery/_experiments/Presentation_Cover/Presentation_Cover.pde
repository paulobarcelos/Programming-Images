void setup(){
  
  // Set the size of the screen
  //size(1920, 1080);
  size(1920, 1080, "processing.core.PGraphicsRetina2D"); //retina display
  
  // Paint the background
  background(#F4EAD5);
  
  // Create an array of colors
  color[] colors = {#E94E77, #D68189, #C6A49A, #C6E5D9};
  
  // Calculate the number of columns and rows for the patter, based
  // on the size of the patter;
  float columns = width / 70;
  float rows = height / 70;
  
  // Create a loop that will control the horizontal coordinates...
  for(float x = 0; x < columns; x++){
    float xIndex = x / columns;
    float xPosition = xIndex * width;    
    
    //... and one that will control vertical.
    for(float y = 0; y < rows; y++){
      float yIndex = y / rows;
      float yPosition = yIndex * height;  
      
      // Disable the strokes
      noStroke();
      
      // Draw a square, with a small random offset on it's position
      fill(#C6E5D9);            
      rect(xPosition + random(10), yPosition + random(10), 50, 50);
      
      // Draw the circles, with a random offset on it's size
      fill(#D68189);            
      float size = random(9,12);
      ellipse(xPosition + 25, yPosition + 25, size, size);
      
    }
    
  }
  
  // Save the image
  save("background.png");
}
