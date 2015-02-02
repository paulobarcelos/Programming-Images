// Fan art!

// THE FLAMING LIPS
// Yoshimmi Battles the Pink Robots

// by Paulo Barcelos

/*

A representation of Yhoshimmi battling the evil robots.

She is at the center while the machines are trying to 
sorround her.

But they know they can't get too close of her attack radius,
so most of them stay behind the safety line.

*/

PImage title;

void setup(){
  size(600, 650);
  background(#F2DFCA);
  title = loadImage("title.png");
}

void draw(){
  
  // Find a random point in the screen
  float x = random(width);
  float y = random(height);
  
  // Calculate the distance from the center
  float distance = dist(x, y, width/2, height/2);
  
  // Calculate how that distance relates to the attack radius
  float attackRadius = 250;
  float attackForce = 6;
  float safety = pow(distance / attackRadius, attackForce);
  
  // Decide if robot should be drawn or not:
  
  // 1 - Pick a random number from 0 to 1
  // 2 - Check if number is smaller than the safety
  
  // Closer to the center, the safety value is low so there is
  // a lower probably of the random number being smaller than it.
  if(random(1) < safety){
    
    robot(x, y);
  
  }
  // Draw our hero, a very tiny dot on the center
  yoshimmi(width/2, height/2);
  
  // Draw the title image, at the bottom of the screen
  image(title, 0, 600);
  
  // Save image when S is pressed
  if(keyPressed == true && key == 's'){
      save("yoshimmi.png");
  }
  
}

// Command that draws a robot
void robot(float x, float y){
  // Random pink
  if(random(1) < 0.5){
    fill(#F6BCAD);
  }
  else{
    fill(#DCBDB1);
  }
  stroke(#000000, 20);
  float size = random(15, 30);
  ellipse(x, y, size, size);  
}

// Command that draws yoshimi
void yoshimmi(float x, float y){
  noStroke();
  fill(#FFFFFF);
  ellipse(x, y, 4 , 4);
}

