# Production Assignment: Midterm Project Revisit, Enhancement (Fix the TV)

**Photos of Electronics Used**

<img src="https://github.com/joshsanchez98/CreativeProgrammingAndElectronics/blob/master/July_29/IMG_7710.jpg" width="700" height="600">

**Schematic**

<img src="https://github.com/joshsanchez98/CreativeProgrammingAndElectronics/blob/master/July_29/2020-07-29%2001-28.jpeg" width="500" height="700">

**Project Description**

I have decided to enhance some parts of my video game project [link] in order to make my game more immersive by incorporating Processing with Ardunio.  So, I looked through my project and decided to implement the following:
- Use the speaker (from Sparkfun Kit) to sound an affirming tune when the problem is fixed correctly or is not fixed correctly. 
- Use the potentiometer to determine one of four settings:
- Whether to use the sound of the static, the sound of the tune, neither, or both.
- Use the blue button to sound a tonal hint at the speaker to signal whether or not the cursor is close to the target for that problem.
- Use the green button to sound a tonal hint at the speaker to signal how many problems that you have fixed.
- Use the green LED light (not pictured) to test every component on my board. 

**Things That Were Clever Or Tricky**

- **Mapping out what you wanted to do beforehand.**  As I am not an expert in programming, I am learning more and more, as I do these projects, that identifying a structure beforehand, before coding, makes your code much more organized, readable and editable as a code. 
- **Having the optimal number of problems as 8.**  There are exactly 8 notes in an octave, so it was easy to come up with the hint for the green button concerning the number of problems fixed! 

**Problems and How They Were Overcome**

- **Make sure to add resistors to your buttons!**  Without resistors, the button would be in a high state uncontrollably.  I spent nearly an hour figuring out the problem.
Though I may not be wrong, I thought that the digital_read of the button states can be high if the circuit board is tossed around enough in a physical manner.  I thought I had to rewire and rearrange multiple wires before finding out that either the physical breadboard (or possibly the Arduino Uno) malfunctioned in the electrical components, or there must be something wrong in my code to cause high readings spontaneously from shaking the circuit board. 
- **Confusing analogWrite() with digitalWrite().**  The potentiometer won’t detect little changes if you do digitalWrite(), but if you do analogWrite(), the potentiometer will sense the change.  Here, I was trying to adjust t

**References**

- https://learn.sparkfun.com/tutorials/connecting-arduino-to-processing/all
- https://www.arduino.cc/en/Tutorial/AnalogReadSerial
- https://www.arduino.cc/reference/en/language/functions/digital-io/digitalread/

