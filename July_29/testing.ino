/*
 * Using a green light to test all the controls.
 */

void testGreen() {
  digitalWrite(ledPinGreen, HIGH);
  delay(50);
  digitalWrite(ledPinGreen, 0);
}

void testBlue() {
  digitalWrite(ledPinGreen, HIGH);
  delay(50);
  digitalWrite(ledPinGreen, 0);
}

void testPotentiometer(int sensorValue) {

  if (sensorValue == 0) {
    analogWrite(ledPinGreen, 0);
  } else if (sensorValue >= 0 && sensorValue < 250) {
    analogWrite(ledPinGreen, 62);
    delay(50);
    analogWrite(ledPinGreen, 0);
  } else if (sensorValue > 249 && sensorValue < 500) {
    analogWrite(ledPinGreen, 124);
    delay(50);
    analogWrite(ledPinGreen, 0);
  } else if (sensorValue > 499 && sensorValue < 750) {
    analogWrite(ledPinGreen, 186);
    delay(50);
    analogWrite(ledPinGreen, 0);
  } else if (sensorValue > 749) {
    analogWrite(ledPinGreen, 255);
    delay(50);
    analogWrite(ledPinGreen, 0);
  }
  
}

void testProcessingConnection() {
  
  // reading code live from Processing: 
  if (Serial.available()) {               // if data is available
    val = Serial.read();                  // read it and store
    analogWrite(ledPinGreen, val);        // change brightness
    delay(1000);                          // update every second
    analogWrite(ledPinGreen, 0);
  }
  
}
