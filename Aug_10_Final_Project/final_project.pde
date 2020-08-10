// Joshua Rafael Sanchez
// Professor Michael Shiloh
// DES INV 23, Summer 2020; UC Berkeley
// Wednesday, August 12, 2020
// Final Course Project

//*** Resources ***//
// Processing 3.5.4 Example: AudioWaveform
// Processing 3.5.4 Example: FFT Spectrum
// Processing 3.5.4 Example: PeakAmplitude

// import appropriate libraries
import processing.sound.*; 

// declare soun souce and Waveform analyzer variables
SoundFile sample;
Waveform waveform;
Amplitude rms;

// begin setup function
public void setup() {
  size(640, 360);
  background(255);

  // Load and play a soundfile and loop it.
  sample = new SoundFile(this, "blinding_lights.mp3");
  sample.loop();

  // Create the Waveform analyzer and connect the playing soundfile to it.
  waveform = new Waveform(this, samples);
  waveform.input(sample);
  
  // Create and patch the rms tracker
  rms = new Amplitude(this);
  rms.input(sample);
}

// begin draw function
public void draw() {
  // Set background color, noFill and stroke style
  background(0);

  // create the centerpiece
  changingCircle();
  radioWaves();
  
}
