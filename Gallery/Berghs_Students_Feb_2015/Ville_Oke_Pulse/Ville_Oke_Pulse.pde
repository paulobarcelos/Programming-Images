//This is a visualization of a concert by composer called Richard Reed Parry, in which the orchestra, using stetoscopes, played in pace with their own individual heartbeats.

float y;

void setup() {
  frameRate (100);
  size(600, 600);
  background(0, 0, 0);
  
  
  y = height/2;
}

void draw() {
  fill(0, 0, 0, 4);
  rect(0,0, width, height);

  float pulse = (sin((float)frameCount / 20) + 1) / 2;
  pulse = pow(pulse, 4);
  pulse = pow(pulse, 2);
  
  pulse = 1 - pulse;

  fill(#FCFCF7);
  
  noStroke();
  ellipse(frameCount, y + pulse * 50, 3, 3);

  if(frameCount > 300)
  ellipse(frameCount-320, y + 20 + pulse * 50, 3, 3);
  
  if(frameCount > 650)
  ellipse(frameCount-650, y + 40 + pulse * 50, 3, 3);
  
  if(frameCount > 750)
  ellipse(frameCount-750, y -100 + pulse * 50, 3, 3);
  
  if(frameCount > 800)
  ellipse(frameCount-800, y -150 + pulse * 50, 3, 3);
  
  if(frameCount > 1100)
  ellipse(frameCount-1100, y +100 + pulse * 50, 3, 3);
  
  if(frameCount > 1200)
  ellipse(frameCount-1200, y -80 + pulse * 50, 3, 3);
  
  if(frameCount > 1250)
  ellipse(frameCount-1250, y +80 + pulse * 50, 3, 3);
  
  if(frameCount > 1400)
  ellipse(frameCount-1400, y +150 + pulse * 50, 3, 3);
  
  if(frameCount > 1450)
  ellipse(frameCount-1450, y +180 + pulse * 50, 3, 3);
  
  if(frameCount > 1500)
  ellipse(frameCount-1500, y -160 + pulse * 50, 3, 3);
  
  if(frameCount > 1600)
  ellipse(frameCount-1600, y -180 + pulse * 50, 3, 3);
  
  if(frameCount > 1600)
  ellipse(frameCount-1600, y +200 + pulse * 50, 3, 3);
  
  if(frameCount > 1620)
  ellipse(frameCount-1700, y +230 + pulse * 50, 3, 3);
  
  if(frameCount > 1640)
  ellipse(frameCount-1640, y -200 + pulse * 50, 3, 3);
   
  if(frameCount > 1580) 
  ellipse(frameCount-1580, y -50 + pulse * 50, 3, 3);
  
  if(frameCount > 1780) 
  ellipse(frameCount-1780, y -250 + pulse * 50, 3, 3);
  
  if(frameCount > 1820) 
  ellipse(frameCount-1820, y -20 + pulse * 50, 3, 3);
  
  if(frameCount > 2000)
  ellipse(frameCount-20000, y +210 + pulse * 50, 3, 3);
  
  if(frameCount > 2100)
  ellipse(frameCount-2100, y +90 + pulse * 50, 3, 3);
  
  if(frameCount > 2200)
  ellipse(frameCount-2200, y -110 + pulse * 50, 3, 3);
   
  if(frameCount > 2250) 
  ellipse(frameCount-2250, y -65 + pulse * 50, 3, 3);
  
  if(frameCount > 2300) 
  ellipse(frameCount-2300, y -210 + pulse * 50, 3, 3);
  
  if(frameCount > 2350) 
  ellipse(frameCount-2350, y +80 + pulse * 50, 3, 3);
  
  if(frameCount > 2500) 
  ellipse(frameCount-2500, y +20 + pulse * 50, 3, 3);
  
  if(frameCount > 2550) 
  ellipse(frameCount-2550, y -40 + pulse * 50, 3, 3);
  
  if(frameCount > 3000) 
  ellipse(frameCount-3000, y +150 + pulse * 50, 3, 3);
}
