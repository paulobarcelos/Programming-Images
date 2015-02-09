PShape brushShape;
PShape brushShape1;
float x;


void setup()
{

  size(displayWidth, displayHeight);
  
  
  brushShape=loadShape ("droppe.svg");
  brushShape1=loadShape ("sol.svg");

}
  

void draw()
{
  background(#1F395C);
  
        fill(#FFFFFF);
  textSize(12);
  text("And it's harder than you think", 500, 516); 
    text("to delay this sadness", 527, 532); 

  // Draw a "static" circle
  //fill(#FFFFFF);
  //noStroke();
  //ellipse(600, 300, 400, 400);
  //regn
  //stroke (#000000,20);
  //fill(#FFFFFF); 
  //ellipse(600, frameCount*5, 20, 20);

  stroke(#000000, 20);
  fill (#FFFFFF);
  //float size = random(5, 10);
  
  for(float i = 1; i < 10; i ++)
  {
    float fall = (frameCount * i  ) % (displayHeight -300);
    x = random (290,900);
    
    if(fall == 0)
    {
      x = random (290,900);
    }
    shape(brushShape, x, 300 + fall, 1, 1);
    
  }
  //ellipse(x, 300 + frameCount*2, 10, 10);
  //ellipse(400, 300 + frameCount*4, 10, 10);

  //noStroke ();
  //fill(#DEDB9C);
  //arc(600, 300, 500, 500, -PI, 0, OPEN);
  shape(brushShape1, 600, 200,8,8);
}


