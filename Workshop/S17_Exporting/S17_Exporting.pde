void setup(){
  size(600, 600);
  background(#343838);
}

void draw(){
  float size;
  stroke(#FFFFFF);
  strokeWeight(random(1,3));
  
  fill(#005F6B);
  size = random(5, 15);
  ellipse(random(abs(sin(frameCount))*width), random(abs(cos(frameCount))*height), size, size);
  
}

// Just add this snippet to your sketch
// for more info view https://processing.org/tutorials/print/
import processing.pdf.*; 
void keyReleased() {
  if (key == 's') {
    save("image.png");
  }
  // When 'B' or 'b' is pressed,
  // start recording to the PDF 
  if (key == 'B' || key == 'b') {         
    beginRecord(PDF, "image.pdf");
    // Optionally, you can clear the background before drawing to the PDF
    background(#343838);
  }
  // When 'E' or 'e' is pressed,
  // stop recording the PDF and
  if (key == 'E' || key == 'e') {
    endRecord();
  }
}
