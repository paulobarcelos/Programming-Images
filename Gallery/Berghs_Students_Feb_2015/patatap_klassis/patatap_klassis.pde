// import the audio library
import ddf.minim.*;

// create a instance of the Minim class,
// it will help us create the audio players
Minim minim;

// create the audio player for each specific key
AudioPlayer a_player;
AudioPlayer s_player;
AudioPlayer d_player;
AudioPlayer f_player;
AudioPlayer g_player;
AudioPlayer w_player;

// img declarations
PShape a_img;
PShape s_img;
PShape d_img;
PShape f_img;
PShape g_img;
PShape w_img;

// flag to know if the keys are pressed or not
boolean a = false;
boolean s = false;
boolean d = false;
boolean f = false;
boolean g = false;
boolean w = false;

void setup()
{ 
  size(displayWidth, displayHeight);
  background(#aadddd);
  
  // we pass this to Minim so that it can load files from the data directory
  minim = new Minim(this);

  // load the sound files
  a_player = minim.loadFile("a.mp3");
  s_player = minim.loadFile("s.mp3");
  d_player = minim.loadFile("d.mp3");
  f_player = minim.loadFile("f.mp3");
  g_player = minim.loadFile("g.mp3");
  w_player = minim.loadFile("w.mp3");
  
  a_img = loadShape("a.svg");
  s_img = loadShape("s.svg");
  d_img = loadShape("d.svg");
  f_img = loadShape("f.svg");
  g_img = loadShape("g.svg");
  w_img = loadShape("w.svg");
  
}

void draw(){
  background(#aadddd);
  if(a)
  {
    shape(a_img, 300, 200);
  }
  else if(s)
  {
    shape(s_img, 300, 200);
  }
  else if(d)
  {
    shape(d_img, 300, 200);
  }
  else if(f)
  {
    shape(f_img, 300, 200);
  }
  else if(g)
  {
    shape(g_img, 300, 200);
  }
  else if(w)
  {
    shape(w_img, 300, 200);
  }
}


void keyPressed(){
  
 if (key == 'a') 
 {
    // Check for exact moment the key was pressed for the first time
    if(a == false) 
    {
      a_player.play(0); // pass 0 to always play from the beggining      
    }    
    a = true;     
 }  
 else if (key == 's') 
 {
    if(s == false) 
    {
      s_player.play(0);
    }    
    s = true;
 }
  
 else if (key == 'd') 
 {
    if(d == false) 
    {
      d_player.play(0);
    }    
    d = true;
  }
  
  else if (key == 'f') 
  {
    if(f == false) {
      f_player.play(0);
    }    
    f = true;
  }  
  else if (key == 'g') 
  {
    if(g == false) 
    {
      g_player.play(0);
    }    
    g = true;
  } 
   else if (key == 'w') 
   {
    if(w == false) 
    {
      w_player.play(0);
    }    
    w = true;
  }
}

void keyReleased(){
  if (key == 'a') {
    a = false;
     a_player.pause();
    
  }
  
  if (key == 's') {
    s = false;
     s_player.pause();
  }
  
  if (key == 'd') {
    d = false;
     d_player.pause();
  }
  
  if (key == 'f') {
    f = false;
     f_player.pause();
  }
  
  if (key == 'g') {
    g = false;
    g_player.pause();
  }
  
  if (key == 'w') {
    w = false;
     w_player.pause();
  }
}

