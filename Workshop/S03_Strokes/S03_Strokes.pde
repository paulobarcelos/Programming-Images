void setup(){
  size(500, 150);
  
  // Control the stroke thickness 
  strokeWeight(1);
  line(50, 20, 150, 20);
  
  strokeWeight(4);  
  line(50, 40, 150, 40);
  
  strokeWeight(10);
  line(50, 70, 150, 70);
  
  // Control the stroke cap 
  strokeCap(ROUND);
  line(200, 30, 300, 30);
  strokeCap(SQUARE);
  line(200, 50, 300, 50);
  strokeCap(PROJECT);
  line(200, 70, 300, 70);
  
  // Turn strokes "off"
  ellipse(350, 50, 20, 20);
  ellipse(400, 50, 30, 30);
  ellipse(450, 50, 40, 40);
  
  noStroke();
  
  ellipse(350,  100, 20, 20);
  ellipse(400, 100, 30, 30);
  ellipse(450, 100, 40, 40); 
}
