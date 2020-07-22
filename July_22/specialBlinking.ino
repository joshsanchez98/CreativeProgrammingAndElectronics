/** 
 *  Special blink when the sensor is activated.
 */

void specialBlinkingGreen() {

   digitalWrite(ledPinYellow1, LOW);         
   digitalWrite(ledPinYellow2, LOW);         
   digitalWrite(ledPinGreen1, HIGH);         
   digitalWrite(ledPinGreen2, HIGH);       
   digitalWrite(ledPinBlue1, LOW);       
   digitalWrite(ledPinBlue2, LOW);         
   delay(80);
 
   digitalWrite(ledPinYellow1, LOW);       
   digitalWrite(ledPinYellow2, HIGH);         
   digitalWrite(ledPinGreen1, LOW);         
   digitalWrite(ledPinGreen2, LOW);       
   digitalWrite(ledPinBlue1, HIGH);        
   digitalWrite(ledPinBlue2, LOW);         
   delay(80);

   digitalWrite(ledPinYellow1, HIGH);         
   digitalWrite(ledPinYellow2, LOW);    
   digitalWrite(ledPinGreen1, LOW);    
   digitalWrite(ledPinGreen2, LOW);     
   digitalWrite(ledPinBlue1, LOW);   
   digitalWrite(ledPinBlue2, HIGH);      
   delay(80);

   digitalWrite(ledPinYellow1, LOW);    
   digitalWrite(ledPinYellow2, HIGH);       
   digitalWrite(ledPinGreen1, LOW); 
   digitalWrite(ledPinGreen2, LOW);    
   digitalWrite(ledPinBlue1, HIGH);  
   digitalWrite(ledPinBlue2, LOW); 
   delay(80);
  
}

void specialBlinkingBlue() {

   digitalWrite(ledPinYellow1, LOW);
   digitalWrite(ledPinBlue2, HIGH);         
   delay(80);
   digitalWrite(ledPinBlue2, LOW);       
   digitalWrite(ledPinBlue1, HIGH);        
   delay(80);
   digitalWrite(ledPinBlue1, LOW);       
   digitalWrite(ledPinGreen2, HIGH);        
   delay(80);
   digitalWrite(ledPinGreen2, LOW);       
   digitalWrite(ledPinGreen1, HIGH);        
   delay(80);
   digitalWrite(ledPinGreen1, LOW);       
   digitalWrite(ledPinYellow2, HIGH);        
   delay(80);
   digitalWrite(ledPinYellow2, LOW);       
   digitalWrite(ledPinYellow1, HIGH);        
   delay(80);
   
  
}

void specialBlinkingYellow() {

   digitalWrite(ledPinBlue2, LOW);
   digitalWrite(ledPinYellow1, HIGH);         
   delay(80);
   digitalWrite(ledPinYellow1, LOW);       
   digitalWrite(ledPinYellow2, HIGH);        
   delay(80);
   digitalWrite(ledPinYellow2, LOW);       
   digitalWrite(ledPinGreen1, HIGH);        
   delay(80);
   digitalWrite(ledPinGreen1, LOW);       
   digitalWrite(ledPinGreen2, HIGH);        
   delay(80);
   digitalWrite(ledPinGreen2, LOW);       
   digitalWrite(ledPinBlue1, HIGH);        
   delay(80);
   digitalWrite(ledPinBlue1, LOW);       
   digitalWrite(ledPinBlue2, HIGH);        
   delay(80);
  
}
