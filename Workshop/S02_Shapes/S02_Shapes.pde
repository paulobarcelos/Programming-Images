void setup(){
  size(500, 400);
  
  // Hey! This line of text is a "comment".
  
  // Comments starts with "//" and are ignored by the computer.
  // We will use comments to explain things in our code, and to
  // disable commands we don't want to be exectuted.   
  
  // Drawing a few points
  point(10, 10);
  point(20, 20);
  point(30, 30);
  point(40, 40);
  
  // Drawing a line
  line(50, 50, 350, 350);
  
  // Drawing a rectangle
  rect(100, 100, 200, 200);
    
  // Drawing ellipses
  ellipse(380, 100, 50, 50);
  ellipse(380, 160, 100, 30);
  
  // Drawing a triangle
  triangle(250, 200, 350, 200, 250, 300);
  
  // Draw a 4 sided polygon
  quad(100, 30, 150, 20, 200, 45, 120, 60);
  
  // Draw a few arcs. They will have the same properties, but
  // will use different drawing modes.
  arc(50, 100, 60, 60, 0, PI+QUARTER_PI, OPEN);
  arc(50, 200, 60, 60, 0, PI+QUARTER_PI, CHORD);
  arc(50, 300, 60, 60, 0, PI+QUARTER_PI, PIE);
}
