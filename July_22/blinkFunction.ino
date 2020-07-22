// ***
// Supporting functions which makes lights blink.
// ***

// Constants Established:
int brightness1 = 0;    // how bright the first LED is
int brightness2 = 112;    // how bright the second LED is
int fadeAmount1 = 5;     // how many points to fade the LED by
int fadeAmount2 = 5;     // how many points to fade the LED by


// Basic Blink:
void functionBlink(int ledPin1, int ledPin2) {

   digitalWrite(LED_BUILTIN, HIGH);   // turn the LED on (HIGH voltage)
   digitalWrite(ledPin1, HIGH);         // turn the LED on
   digitalWrite(ledPin2, LOW);         // turn the LED on
   delay(50);                       // wait for a second
   digitalWrite(LED_BUILTIN, LOW);    // turn the LED off (LOW voltage)
   digitalWrite(ledPin1, LOW);         // turn the LED off
   digitalWrite(ledPin2, HIGH);         // turn the LED off
   delay(50);                       // wait for a second
  
}
