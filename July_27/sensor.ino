/*
 * Playing based on sensor.
 */

 void playSensor() {

  if (buttonStateGreen == HIGH) {
    
    delay(1000); // to allow double press
      if (buttonStateRed == HIGH) {
        playSoundChase();
      } else {
        playSoundTheForce(); 
      }
      
  } else if (buttonStateRed == HIGH) {
    
    delay(1000); // to allow double press
      if (buttonStateGreen == HIGH) {
        playSoundChase();
      } else {
        playSoundDarkSide(); 
      }

  }

}

 
