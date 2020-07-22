// ***
// Reset Brightness. 
// ***

// Constants established.
int brightness = 0;

// Reset brightness so that other lights don't continue.
void resetBrightness() {
  analogWrite(ledPinGreen1, brightness);
  analogWrite(ledPinGreen2, brightness);
  analogWrite(ledPinBlue1, brightness);
  analogWrite(ledPinBlue2, brightness);
  analogWrite(ledPinYellow1, brightness);
  analogWrite(ledPinYellow2, brightness);
}
