PImage bg;
PImage brushImage;

PImage[] brushes = new PImage[10];

void setup(){
  size(1000, 600);
frameRate(60);

  bg = loadImage("background.jpg");
  

  brushImage = loadImage("brush.png");
  
  brushes[0] = loadImage("1.png");
  brushes[1] = loadImage("2.png");
  brushes[2] = loadImage("3.png");
  brushes[3] = loadImage("4.png");
  brushes[4] = loadImage("5.png");
  brushes[5] = loadImage("6.png");
  brushes[6] = loadImage("7.png");
  brushes[7] = loadImage("8.png");
  brushes[8] = loadImage("9.png");
  brushes[9] = loadImage("10.png");
  image(bg, 0, 0);
}

void draw(){
  
  if(mousePressed == true){
    brush(mouseX, mouseY, random(0.3, 1), 0, (int)random(0, 10));
  }
   
  if(keyPressed == true && key == 'c'){
    image(bg, 0, 0);
  }
  
}

void brush(float x, float y, float size, float angle, int image){
  pushMatrix();
  
  translate(x, y);
  
  rotate(radians(angle));
  
  scale(size);
  tint(255, 255);
   image(brushes[image], - brushes[image].width / 2, - brushes[1].height/2, brushes[image].width, brushes[image].height);
  
  popMatrix();
}

