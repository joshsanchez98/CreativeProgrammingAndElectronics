# Production Assignment: Introduction to Arduino

**GIF of Project in Action:**

![](animated.gif)

**Picture of Project:**

<img src="https://github.com/joshsanchez98/CreativeProgrammingAndElectronics/blob/master/July_22/IMG_7694.jpg" width="700" height="500">

**Schematic:**

<img src="https://github.com/joshsanchez98/CreativeProgrammingAndElectronics/blob/master/July_22/Schematic.jpeg" width="500" height="700">

**Description of Piece:**

My background in circuits and electronics in general is at a level of a novice, so this was a really fun and interesting project for me.  I had tried to use all the knowledge and concepts that were covered in the first class.  Here are a list of things that my project can do:
- When you press just the blue button, the blue lights flicker.
- When you press just the yellow button, the yellow lights flicker.
- When you press the blue and yellow button simultaneously, the green lights flicker.
Then, there are bonus animations when you cover/activate the photoresistor.  Trying each combination will make unique animations!

**Steps to Create the Piece:**
- I used Arduino 1.8.13, as well as a basic kit of wires, a breadboard, and Arduino, as well as LED lights, resistors, and buttons. 
- I used with a simple LED, wire and resistor configuration before moving on to more advanced stages in order to quality check my work.

**Difficulties, Challenges, and Other Interesting Tidbits**  
- Initially, I wanted 3 lights for each, but I had noticed that my Arduino Uno features only 6 pins that were analog, which made creating only a 6-LED-light fixture feasible, due to the size of the breadboard and the materials I had at the time.
- Being a novice with circuits, understanding common features took time.  I needed to watch and to read multiple tutorials.
-- For example, the LED lights only work if they are faced in the right direction, and because the longer end was faced towards the ground, I was stuck for literally hours before I had noticed!
- You have to be very careful with working with the parts, as they are very delicate.  I had to make sure that I created this circuit board at a slower pace!
-- Tip: Using the screwdriver in many situations can really make for a more easing process.
- I tried using booleans to make different states of the blinkers.  Instead, using the button state and digitalRead() made more sense. 
- For some reason, when checking the sensorValue when blue was pressed, when the sensor was pressed/covered, the values hovered in around 70, then for yellow or blue and yellow, both cases which regularly reported results of around 20.
- Tip: End every animation with resetBrightness() so that your brightness does not continue after you activate the switch. The light animation should look relatively smooth then.
