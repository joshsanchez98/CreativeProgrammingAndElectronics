/*
 Controlling a servo position using a potentiometer.
 References:
 Scott Fitzgerald of Arduino
 http://www.arduino.cc/en/Tutorial/Knob
*/

// Defining variables
int val;         // variable to read the value from the analog pin
int pos1 = 0;    // variable to store the servo position of servo 1
int pos2 = 0;    // variable to store the servo position of servo 2

void playServo() {
  
  val = analogRead(potPin)/4;            // reads the value of the potentiometer (value between 0 and 1023)

  if (buttonStateGreen == HIGH && buttonStateRed == HIGH) {
    
     for (pos1 = 0; pos1 <= 360; pos1 += 30) { // goes from 0 degrees to 360 degrees
      // in steps of 10 degrees, but speed depends on the potentiometer
      myservo1.write(pos1);             // tell servo to go to position in variable 'pos'
      myservo2.write(pos2);             // tell servo to go to position in variable 'pos'
      delay(val);                       // waits 15ms for the servo to reach the position
      pos2 = pos2 + 30;                     // you want servo 2 to move as well
     }
     
     for (pos1 = 360; pos1 >= 0; pos1 -= 30) { 
      // in steps of 10 degrees, but speed depends on the potentiometer
      myservo1.write(pos1);             // tell servo to go to position in variable 'pos'
      myservo2.write(pos2);             // tell servo to go to position in variable 'pos'
      delay(val);                       // waits 15ms for the servo to reach the position
      pos2 = pos2 - 30;                     // you want servo 2 to move as well
     }
     
  } else if (buttonStateGreen == HIGH && buttonStateRed == LOW) {
    
     for (pos1 = 0; pos1 <= 360; pos1 += 30) { 
      // in steps of 30 degrees, but speed depends on the potentiometer
      myservo1.write(pos1);             // tell servo to go to position in variable 'pos'
      delay(val);                    
     }
     
     for (pos1 = 360; pos1 >= 0; pos1 -= 30) { 
      // in steps of 30 degrees, but speed depends on the potentiometer
      myservo1.write(pos1);             // tell servo to go to position in variable 'pos'
      delay(val);                      
     }
     
  } else if (buttonStateGreen == LOW && buttonStateRed == HIGH) {
    
     for (pos2 = 0; pos2 <= 360; pos2 += 30) { 
      // in steps of 30 degrees, but speed depends on the potentiometer
      myservo2.write(pos2);             // tell servo to go to position in variable 'pos'
      delay(val);                      
     }

     for (pos2 = 360; pos2 >= 0; pos2 -= 30) { 
      // in steps of 30 degrees, but speed depends on the potentiometer
      myservo2.write(pos2);             // tell servo to go to position in variable 'pos'
      delay(val);                      
     }
     
  }
  
}
