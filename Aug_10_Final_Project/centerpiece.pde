// Houses all the code for the centerpiece of the visualization.

//** (1) Radio waves. **//

// determine how many samples of Waveform you want to read at once
int samples = 100;

public void radioWaves() {

  stroke(255);
  strokeWeight(5);
  noFill();
  
  // Perform the analysis
  waveform.analyze();
  
  beginShape();
  for(int i = 0; i < samples; i++){
    // Draw current data of the waveform
    // Each sample in the data array is between -1 and +1 
    vertex(
      map(i, 0, samples, 0, width),
      map(waveform.data[i], -1, 1, 0, height)
    );
  }
  endShape();
  
}

//** (2) Changing circle. **//

// Declare a smooth factor to smooth out sudden changes in amplitude.
float smoothingFactor = 0.25;

// Used for storing the smoothed amplitude value
float sum;

// Establishing angle
int angle = 0;

public void changingCircle() {
 
  noStroke();
  fill(255, 0, 150);

  // smooth the rms data by smoothing factor
  sum += (rms.analyze() - sum) * smoothingFactor;

  // rms.analyze() return a value between 0 and 1. It's
  // scaled to height/2 and then multiplied by a fixed scale factor
  float rms_scaled = sum * (height/4) * 5;

  // We draw a circle whose size is coupled to the audio analysis
  fill(255, random(255), random(255)); // random red colors
  ellipse(width/2, height/2, rms_scaled, rms_scaled);
  
}
