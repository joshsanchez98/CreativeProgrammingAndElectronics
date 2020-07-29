// Joshua Rafael Sanchez
// Professor Michael Shiloh
// DES INV 23, Summer 2020
// July 27, 2020
// HW 5: Instrument

// Include tabs:
#include <Servo.h>

// Setting up global variables/objects:
Servo myservo1;          // create servo object to control 1st servo
Servo myservo2;          // create servo object to control 2nd servo
int potPin = A2;         // setting location of potentiometer pin
int potPosition;         // variable holds value of potentiometer
int sensorPin = A3;      // setting location of sensor pin
int servoPin1 = 6;       // setting location of servo pin 1
int servoPin2 = 5;       // setting location of servo pin 2
int buttonPinGreen = A0; // setting location of green button
int buttonPinRed = A5;   // setting location of red button

// Storing value of sensor:
int sensorValue = 0;

// Variables will change:
int buttonStateGreen = 0;
int buttonStateRed = 0;

void setup() {

  Serial.begin(9600);               // start a serial connection with the computer
  pinMode(buttonPinGreen, INPUT);
  pinMode(buttonPinRed, INPUT);
  myservo1.attach(servoPin1);       // attaching to appropriate servo pin
  myservo2.attach(servoPin2);       // attaching to appropriate servo pin
  
}

void loop() {

  // read the value from the sensor:
  sensorValue = analogRead(sensorPin);
  Serial.println(sensorValue);

  // read the state of the pushbutton value:
  buttonStateGreen = digitalRead(buttonPinGreen);
  buttonStateRed = digitalRead(buttonPinRed);

  // play speaker sound if sensor is low;
  if (sensorValue < 500) {
     playSensor();         // using the sensors
  } else {
  // play regular sound if sensor is regular;
     playServo();          // using the servos
  }

}
