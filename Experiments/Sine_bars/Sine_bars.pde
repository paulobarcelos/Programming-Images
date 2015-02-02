void setup(){

  size(800, 800);
  background(#FFFF00);
  
  float columns = 20;
  noStroke();
  fill(#000000);
  for(float i = 0; i < columns; i++){
    rect(i/columns * width, 0, sin(i/columns * PI) * 20, sin(i/columns * PI) * height);
  }
  
  fill(#FFFFFF);
  for(float i = 0; i < columns; i++){
    rect(i/columns * width -2, -2, sin(i/columns * PI) * 20, sin(i/columns * PI) * height);
  }
  
}
