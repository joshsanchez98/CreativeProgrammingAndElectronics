/*
 * Joshua Rafael Sanchez
   Professor Michael Shiloh
   DES INV 23, Summer 2020
   July 29, 2020
   HW 6
 */

// collecting data from Processing:
char val;                   // data received from serial port

// setting global constants:
int ledPinGreen = 6;        // location of green LED pin
int buttonPinGreen = A4;    // location of green button pin
int buttonPinBlue = A0;     // location of blue button pin
int potPin = A2;            // location of potentiometer pin
int potPosition;            // variable holds value of potentiometer

// setting changing variables:
int buttonStateGreen = LOW;
int buttonStateBlue = LOW;
int sensorValue = 0;
int brightness = 0;

// setting up the code, once:
void setup() {

  Serial.begin(9600);
  pinMode(ledPinGreen, OUTPUT);
  pinMode(buttonPinGreen, INPUT);
  pinMode(buttonPinBlue, INPUT);

  // testing
  digitalWrite(ledPinGreen, brightness);

}

// running the code here, repeatedly:
void loop() {
  
  // read input on analog pin 2:
  sensorValue = analogRead(A2);

  // testing (make sure you put this after)
  testPotentiometer(sensorValue);
  testProcessingConnection();

  // print out value (for reference):
  Serial.println(sensorValue);
  delay(1);                               //  delay in between
  
  // read the state of the pushbutton value:
  buttonStateGreen = digitalRead(buttonPinGreen);
  buttonStateBlue = digitalRead(buttonPinBlue);

  // active buttons:
  if (buttonStateGreen == HIGH) {
    testGreen();                        // testing
    playGreen();                        // play green tones.
  }
  if (buttonStateBlue == HIGH) {
    testBlue();                         // testing
    playBlue();                         // play blue tones.
  }
  

}
