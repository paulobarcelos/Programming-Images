import ddf.minim.*;
 
Minim minim;
AudioPlayer player;

//float yoff = 0.0;        // 2nd dimension of perlin noise
//PImage texture;
void setup() {
  size(500, 500);
  minim = new Minim(this);
 
  // this loads mysong.wav from the data folder
  player = minim.loadFile("river.mp3");
  player.play();
  //frameRate(10);
 
}

void draw() {
  background(#131313);


  
  /* noStroke();
  fill(#113644);
  // We are going to draw a polygon out of the wave points
  beginShape(); 
  
  float xoff = 0;       // Option #1: 2D Noise
   // float xoff = yoff; // Option #2: 1D Noise
  
  // Iterate over horizontal pixels
  for (float x = 0; x <= width; x += 10) {
    // Calculate a y value according to noise, map to 
    float y = map(noise(xoff, yoff), 0, 1, 200,300); // Option #1: 2D Noise
    // float y = map(noise(xoff), 0, 1, 200,300);    // Option #2: 1D Noise
    
    // Set the vertex
    vertex(x, y); 
    // Increment x dimension for noise
    xoff += 0.05;
  }
  // increment y dimension for noise
  yoff += 0.03;
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);
  */
  
  
  
  for(int i = 0; i < player.bufferSize() - 1; i++)
  {
    stroke(#ffffff);
    fill(#000000, 30);
    
    float x1 = map( i, 0, player.bufferSize(), 0, width );
    float x2 = map( i+1, 0, player.bufferSize(), 0, width );
    triangle( 225, 350, 250 + player.left.get(i+1)*60, 300 + player.right.get(i)*60, 275,350);
  }
  
  /*for(int i = 0; i < player.bufferSize() - 1; i++)
   {
    stroke(#888888);
    float x1 = map( i, 0, player.bufferSize(), 0, width );
    float x2 = map( i+1, 0, player.bufferSize(), 0, width );
    line( x1, 420 + player.mix.get(i)*5, x2, 420 + player.mix.get(i+1)*5 );
   }
  */
  
  
  
  
  
  //Load the texture
  //texture = loadImage("texture.png");
  //image(texture,0,0);
  
  
  // Changing the size of the frame
  
int frame = 50;
int place = 500-frame;
int margin = 10;

  fill(#E8DCD0);
  noStroke();
  rect(0,0,frame,800);
  rect(place, 0, frame,800);
  rect(0,0,800,frame);
  rect(0,place,800,frame);
     
     PFont myFont;
     // lykke li text. glöm inte lägga till typsnittsstorlek i "tools > add font" om du ska byta storlek
    fill(#000000);
       myFont = createFont("font.otf", 14);
     textFont(myFont);
     textAlign(LEFT);
     text("lykke li", frame, frame-margin);
     
     // wounded rhymes text. glöm inte lägga till typsnittsstorlek i "tools > add font" om du ska byta storlek
     fill(#000000);
       myFont = createFont("font.otf", 14);
     textFont(myFont);
     textAlign(RIGHT);
     text("I follow rivers", 500-frame, frame-margin);
     
     fill(#000000);
       myFont = createFont("font.otf", 10);
     textFont(myFont);
     textAlign(CENTER);
     text("04.02.15", 250, 500-3*margin);
 }

