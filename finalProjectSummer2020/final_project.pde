// Joshua Rafael Sanchez
// Professor Michael Shiloh
// DES INV 23, Summer 2020; UC Berkeley
// Wednesday, August 12, 2020
// Final Course Project

//*** Resources ***//
// Processing 3.5.4 Example: AudioWaveform
// Processing 3.5.4 Example: FFT Spectrum
// Processing 3.5.4 Example: PeakAmplitude
// Sparkfun Article: Connecting Arduino to Processing

// import appropriate libraries
import processing.sound.*; 
import processing.serial.*;

// serial information
Serial myPort;     // create object from Serial class
String val;        // data received from the serial port, default moderna

// declare sound source, Waveform analyzer, etc. variables
SoundFile sample;
Waveform waveform;
Amplitude rms;
FFT fft;

// set for the home screen:
boolean wait;

// for the scrolling:
PFont f;               // global font variable

// setting string to a variable.  PLACE SONG NAME OF FILE HERE.
String songDescription = "1-02 All The Stars (with SZA).mp3";

// an array of stripes
Stripe[] stripesLeft = new Stripe[10];        
Stripe[] stripesRight = new Stripe[10];  
// setting up the bands
int bands = 128;            // must be a power of two

// begin setup function
public void setup() {
  
  // wait is by default true (home screen):
  wait = true;
  
  // no Cursor when hovering
  noCursor();
  
  // serial information
  String portName = Serial.list()[4];
  myPort = new Serial(this, portName, 9600);
  
  // fullScreen();
  size(750, 750);
  background(0);

  // Load and play a soundfile and loop it.
  sample = new SoundFile(this, songDescription);
  sample.loop();

  // Create the Waveform analyzer and connect the playing soundfile to it.
  waveform = new Waveform(this, samples);
  waveform.input(sample);
  
  // Create and patch the rms tracker
  rms = new Amplitude(this);
  rms.input(sample);
  
  // Initialize all Stripe objects
  for (int i = 0; i < stripesLeft.length; i ++ ) {
    stripesLeft[i] = new Stripe();
  }
  for (int i = 0; i < stripesRight.length; i ++ ) {
    stripesRight[i] = new Stripe();
  }
  
  // Creating the spectrum bars:
  barWidth = width/float(bands);
  
  // Create the FFT analyzer and connect the playing soundfile to it.
  fft = new FFT(this, bands);
  fft.input(sample);
  
  // Establish variables for scrolling:
  f = createFont("Futura-Bold", 16);
  
}

// begin draw function
public void draw() {
  
  // If wait = true, then still show home screen:
  if (wait) {
    startingPage();
    return;
  }
  
  // If data is available, (this should work)
  if ( myPort.available() > 0) {  
    val = myPort.readStringUntil('\n');         // read it and store it in val
  } 
  // Checking 
  println(val.length());

  // redraw background every loop
  background(0);
  
  // choosing a specific background
  if (val.length() == 5) {
    lightspeed();
    blindingLights();
  } else if (val.length() == 6) {
    tvStatic();
  } else if (val.length() == 7) {
    circles();
  } else if (val.length() == 8) {
    videoGame();
  }
  
  // adding description of song
  scrollingDescription();
  
  // create the centerpiece
  musicSpectrum();
  changingCircle();
  radioWaves();
}

// function to trigger off home page
public void keyPressed() {
  if (key == ' ') {
    wait = false;
  }
}
