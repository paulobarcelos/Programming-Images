//Marcus Lackmann.
//An Homage to the the game 'Papers Please' by Lucas Pope, 
//where you play as a border patroller, deciding who gets to go in to the country and who doesn't.
//Press ANYKEY to look at passport, and A to ACCEPT and D to DISAPPROVE.


PImage stamp;
PImage approved;
PImage denied;
PImage passport;
PImage bakgrund;

void setup(){
  size(600, 600);
  //background(#939393);
  
  bakgrund = loadImage("bakgrund.png");
  image(bakgrund, 0, 0);
  
    //Images to Load
stamp = loadImage("stampel.png");
approved = loadImage("approved.png");
denied = loadImage("denied.png");
passport = loadImage("passport.png");
  
}

void draw(){
  


} 

void keyPressed(){
  image(passport, 50, 100, 500, 500);
  
  if(key == 'a'){
    image(approved, 100, 300, 300, 200);
    image(stamp, 0, 0, 600, 300);
   
  }

  if(key == 'd'){
    image(denied, 200, 300, 300, 200);
  
  image(stamp, 0, 0, 600, 300);
  }
  
   


//if(keyPressed == true && key == 'a');{
 // shape(approved, 100, 100);

//if(keyPressed == true && key == 'd');{
//  shape(denied, 100, 100);


}

