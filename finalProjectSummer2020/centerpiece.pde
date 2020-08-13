// Houses all the code for the centerpiece of the visualization.

//** (1) Radio waves. **//

// determine how many samples of Waveform you want to read at once
int samples = 100;

public void radioWaves() {

  stroke(255);
  strokeWeight(2);
  noFill();
  
  // Perform the analysis
  waveform.analyze();
  
  // Line adjustment so that it stays in circle
  int adjustment = 5;
  
  beginShape();
  for(int i = 0; i < samples; i++){
    // Draw current data of the waveform
    // Each sample in the data array is between -1 and +1 
    vertex(
      map(i, 0, samples, width/2-rms_scaled/2 + adjustment, width/2+rms_scaled/2 - adjustment),
      map(waveform.data[i], -1, 1, height/2-rms_scaled/5, height/2+rms_scaled/5)
    );
  }
  endShape();
  
}

//** (2) Changing circle. **//

// Declare a smooth factor to smooth out sudden changes in amplitude.
float smoothingFactor = 0.07;

// Used for storing the smoothed amplitude value
float sum;

// Establishing angle
int angle = 0;

// global variable for the radiowave
float rms_scaled = 0;

public void changingCircle() {
 
  noStroke();
  fill(255, 0, 150);

  // smooth the rms data by smoothing factor
  sum += (rms.analyze() - sum) * smoothingFactor;

  // rms.analyze() return a value between 0 and 1. It's
  // scaled to height/2 and then multiplied by a fixed scale factor, 0.5
  rms_scaled = sum * (height/3.5) * 1;

  // We draw a circle whose size is coupled to the audio analysis
  fill(255, random(255), random(255)); // random red colors
  ellipse(width/2, height/2, rms_scaled, rms_scaled);
  
}

//** (3) Music spectrum **//

// Define a smoothing factor for FFT
float smoothingFactorFFT = 0.2;

// Create a vector to store the smoothed spectrum data in
float[] sumFFT = new float[bands];

// Variables for drawing the spectrum:
// Declare a scaling factor for adjusting the height of the rectangles
float scale = 4.5;
// Declare a drawing variable for calculating the width of the 
float barWidth;

public void musicSpectrum() {
  
  // Set noStroke and fill color
  fill(0); // random red colors
  noStroke();
  
  // Perform the analysis
  fft.analyze();
  
  // Placeholder for drawing (1/2)
  int j = 0;
  
  for (int i = 8; i < bands*0.75; i++) {
    // Smooth the FFT spectrum data by smoothing factor
    sumFFT[i] += (fft.spectrum[i] - sumFFT[i]) * smoothingFactorFFT;
    
    // Draw the shapes, adjust their height using the scale factor
    ellipse(j*barWidth/2 + width/2, height/2, barWidth/2, -sumFFT[i]*height*scale/2);
    ellipse(width - (j*barWidth/2 + width/2), height/2, barWidth/2, -sumFFT[i]*height*scale/2);
    
    // Drawing the bottom half:
    pushMatrix();
    scale(1, -1);
    translate(0, -height);
    ellipse(j*barWidth/2 + width/2, height/2, barWidth/2, -sumFFT[i]*height*scale/2);
    ellipse(width - (j*barWidth/2 + width/2), height/2, barWidth/2, -sumFFT[i]*height*scale/2);
    popMatrix();
    
    // Placeholder for drawing (2/2)
    j = j + 1;
  }
  
}

//** (4) Song Description Scrolling **//

class Scroll {
  
  float x;                     // horizontal location of text
  float y;                     // vertical location of text
  boolean direction;           // tells you direction of the text
  color colorChoice;           // gets color

  Scroll(int xPos, int yPos, boolean direct, color colorNumber) {
    x = xPos;                 // All text given a horizontal start position
    y = yPos;                 // All text given a vertical start position
    direction = direct;
    colorChoice = colorNumber;
  }

  // Draw text
  void display() {
    
    // Fill with selected color
    fill(colorChoice);

    // Display headline at  x location
    textFont(f, 16);
    textAlign(LEFT);
  
    // A specific text that is displayed
    text(songDescription, x, y); 
    
    // Move stripe right
    if (direction == true) {
      x -= 3;
      if (x < -350) x = width + 350;
    }
    
    // Move stripe left
    if (direction == false) {
      x += 3;
      if (x > width + 350) x = -350;
    }
  }
}

// establishing lines to scroll
Scroll upperType4 = new Scroll(1050, 40, true, 255); 
Scroll upperType = new Scroll(700, 40, true, 0);   
Scroll upperType2 = new Scroll(350, 40, true, 255); 
Scroll upperType3 = new Scroll(0, 40, true, 0);
Scroll lowerType = new Scroll(0, 720, false, 0);  
Scroll lowerType2 = new Scroll(350, 720, false, 255);  
Scroll lowerType3 = new Scroll(700, 720, false, 0);  
Scroll lowerType4 = new Scroll(1050, 720, false, 255); 

public void scrollingDescription() {
  
  // display the names
  upperType.display();
  upperType2.display();
  upperType3.display();
  upperType4.display();
  lowerType.display();
  lowerType2.display();
  lowerType3.display();
  lowerType4.display();
  
}
