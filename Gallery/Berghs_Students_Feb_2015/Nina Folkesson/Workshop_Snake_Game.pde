
//The Snake Game

//I wanted to make something intercative
//and decided to recreate a childhood game. 
//My snake game gives you the option to increase 
//the difficulty and even play a different game 
//every time. Since it's my fisrt code I have not 
//yet learned to make leathal walls. No losers in 
//other words. :D Enjoy.

//By Nina Folkesson



boolean circleActive = true;
PImage bg;
float circleX = 100;
float circleY = 300;

float[] x = new float[20];
float[] y = new float[20];
float segLength = 13;

int keyPressCount = 0;

void setup() {
  size(displayWidth , displayHeight);
  colorMode(HSB);
  bg = loadImage("background.jpg");
  
  circleX = random(150, width-150);
  circleY = random(150, height-150);
}

void draw() {
  
  // Detect mouse hit
  if(mouseX > circleX-8 && mouseX < circleX+8 && mouseY > circleY-8 && mouseY < circleY+8){
    circleX = random(150, width-150);
    circleY = random(150, height-150);
  }
  
  // Draw background
  //color green = color(120, 255, 190);
 //background(green);
  image(bg, 0, 0);
  
  strokeWeight(2);
  strokeCap(ROUND);
  stroke(#126266);
 
  line(0, 500, 500, 500);
  line(400, 0, 400, 300);
  line(770, 500, 770, 100);
  line(1040, 1000, 1040, 460);
 
 // Adding lines with keys 
 if( keyPressCount > 0) line(970, 340, 1500, 340);
 if( keyPressCount > 1) line(630, 340, 630, 940);
 if( keyPressCount > 2) line(770, 500, 870, 500);
 if( keyPressCount > 3) line(430, 640, 430, 940);
 if( keyPressCount > 4) line(830, 600, 1040, 600);
  
  
  // Draw snake
  strokeWeight(17);;
  stroke(#FFFFFF, 100);
 
  dragSegment(0, mouseX, mouseY);
  for(int i=0; i<x.length-1; i++) {
    dragSegment(i+1, x[i], y[i]);
  }

  
  
  // Draw circle
  ellipse(circleX, circleY, 10, 10);

  // Draws frame
  stroke(#B8CACC);
  strokeWeight(300);
  noFill();
  rect(0, 0, width, height);

}

void dragSegment(int i, float xin, float yin) {
  float dx = xin - x[i];
  float dy = yin - y[i];
  float angle = atan2(dy, dx);  
  x[i] = xin - cos(angle) * segLength;
  y[i] = yin - sin(angle) * segLength;
  segment(x[i], y[i], angle);
}

void segment(float x, float y, float a) {
  pushMatrix();
  translate(x, y);
  rotate(a);
  line(0, 0, segLength, 0);
  popMatrix();
}


//Making lines appear with keys  
void keyPressed(){
  keyPressCount = keyPressCount +1 ;
}

