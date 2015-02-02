// Create an "array" with color values.
// An array, is collection of values.
color[] colors = {#FC354C, #29221F, #13747D, #0ABFBC, #FCF7C5};

// Create 2 variables, one that will store the background color
// and another one that will hold the brush color
color bgColor = #000000;
color brushColor = #FFFFFF;

// Note that the variable were declared before the setup() or draw(),
// this will let us access the array from anywhere in the code...

void setup(){
  size(600, 600);
}

void draw(){
  if(mousePressed == true){
    // The bruss will have a random size between 40 and 60
    brush(mouseX, mouseY, random(40, 60), brushColor);
  }
   
  if(keyPressed == true && key == 'c'){
    int randomBg = floor(random(5));
    bgColor = colors[randomBg];
   
    int randomBrush = floor(random(5));
    brushColor = colors[randomBrush];
    
    background(bgColor);
  }
}

void brush(float x, float y, float size, color col){
  strokeWeight(4);
  stroke(col); 
  fill(bgColor);  
  ellipse(x, y, size, size);  
}

