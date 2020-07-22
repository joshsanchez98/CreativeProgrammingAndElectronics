// Joshua Rafael Sanchez
// Professor Michael Shiloh
// DES INV 23: Creative Programming and Electronics, Summer 2020
// July 22, 2020
// HW 4

// Establishing constants for pin placement:
const int buttonPinBlue = A5;
const int buttonPinYellow = A0;
const int ledPinBlue1 = 5;
const int ledPinBlue2 = 3;
const int ledPinGreen1 = 9;
const int ledPinGreen2 = 6;
const int ledPinYellow1 = 11;
const int ledPinYellow2 = 10;
const int sensorPin = A2;

// Setup code here, to run once:
void setup() {
  pinMode(LED_BUILTIN, OUTPUT);     // just to check if the Arduino works
  pinMode(ledPinBlue1, OUTPUT);
  pinMode(ledPinBlue2, OUTPUT);
  pinMode(ledPinGreen1, OUTPUT);
  pinMode(ledPinGreen2, OUTPUT);
  pinMode(ledPinYellow1, OUTPUT);
  pinMode(ledPinYellow2, OUTPUT);
  pinMode(buttonPinBlue, INPUT);
  pinMode(buttonPinYellow, INPUT);
  Serial.begin(9600);               // initialize serial communication at 9600 bits per second
}

// setting constants:
int sensorValue = 0;   // variable to store value of sensor

// variables will change:
int buttonStateBlue = 0;
int buttonStateYellow = 0;

// put your main code here, to run repeatedly:
void loop() {
  
  // read the value from the sensor:
  sensorValue = analogRead(sensorPin);
  Serial.println(sensorValue);
  
  // read the state of the pushbutton value:
  buttonStateBlue = digitalRead(buttonPinBlue);
  buttonStateYellow = digitalRead(buttonPinYellow);

  if (buttonStateBlue == HIGH && buttonStateYellow == HIGH) {

    if (sensorValue < 50) {
      specialBlinkingGreen(); // use special green blinking sequence
      resetBrightness();
    } else {
      functionBlink(ledPinGreen1, ledPinGreen2);   
      resetBrightness();
    }
  
  } else if (buttonStateBlue == HIGH && buttonStateYellow == LOW) {

    if (sensorValue < 70) {
      specialBlinkingBlue(); // use special blue blinking sequence
      resetBrightness();
    } else {
      functionBlink(ledPinBlue1, ledPinBlue2);        
      resetBrightness();      
    }
      
  } else if (buttonStateBlue == LOW && buttonStateYellow == HIGH) {

    if (sensorValue < 60) {
      specialBlinkingYellow(); // use special yellow blinking sequence
      resetBrightness();
    } else {
      functionBlink(ledPinYellow1, ledPinYellow2);
      resetBrightness();
    }
    
  } else {
      resetBrightness();
  }
  
      
}
