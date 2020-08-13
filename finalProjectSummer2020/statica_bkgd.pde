// Background for the static.

// Note: Recycling static from the Midter

// Establish global variables.
int[] numColor = {0, 220, 255}; // for static screen

public void tvStatic() {
  loadPixels(); // loads pixel data
  for (int i = 0; i < height; i++) {
    for (int j = 0; j < width; j++) {
      int rand = (int)random(2);
      color myColor = color(255, numColor[rand], numColor[rand]);
      pixels[i*width + j] = myColor;
    }
  }
  updatePixels(); // uploads pixel data
}
