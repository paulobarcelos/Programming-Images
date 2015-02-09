/**
  * This sketch demonstrates how to monitor the currently active audio input 
  * of the computer using an AudioInput. What you will actually 
  * be monitoring depends on the current settings of the machine the sketch is running on. 
  * Typically, you will be monitoring the built-in microphone, but if running on a desktop
  * it's feasible that the user may have the actual audio output of the computer 
  * as the active audio input, or something else entirely.
  * <p>
  * Press 'm' to toggle monitoring on and off.
  * <p>
  * When you run your sketch as an applet you will need to sign it in order to get an input.
  * <p>
  * For more information about Minim and additional features, 
  * visit http://code.compartmental.net/minim/ 
  */

import ddf.minim.*;

Minim minim;
AudioInput in;

void setup()
{
  size(600, 600, P3D);

  minim = new Minim(this);
  
  // use the getLineIn method of the Minim object to get an AudioInput
  in = minim.getLineIn();
}

void draw()
{
  background(255);
 // stroke(#990066);
strokeWeight (15);


  
  // draw the waveforms so we can see what we are monitoring
  for(int i = 0; i < in.bufferSize() - 1; i++)
  {
 stroke(#FF0000);
 line( i, 75 + in.left.get(i)*40, i+1, 75 + in.left.get(i+1)*40 );
 
 stroke(#FF0066);
 line( i, 150 + in.left.get(i)*80, i+1, 150 + in.left.get(i+1)*80 );
 
 stroke(#FF0099);
 line( i, 250 + in.left.get(i)*160, i+1, 250 + in.left.get(i+1)*160 );
 
 stroke(#FF3399);
 line( i, 350 + in.left.get(i)*80, i+1, 350 + in.left.get(i+1)*80 );

 stroke(#FF66FF);
 line( i, 500 + in.left.get(i)*40, i+1, 500 + in.left.get(i+1)*40 );



   
  }
  //String monitoringState = in.isMonitoring() ? "enabled" : "disabled";
 // text( "Input monitoring is currently " + monitoringState + ".", 5, 15 );
  
}

void keyPressed()
{
  if ( key == 'm' || key == 'M' )
  {
    if ( in.isMonitoring() )
    {
      in.disableMonitoring();
    }
    else
    {
      in.enableMonitoring();
    }
  }
}
