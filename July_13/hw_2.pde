// Joshua Rafael Sanchez
// Professor Michael Shiloh
// DES INV 23; Summer 2020
// 13 July 2020 
// HW #2

// Step 1: Setup using setup(). //
void setup() {
  size (750, 750); // making size 750x750 pixels.
  noStroke(); 
  frameRate(10); // will give epilepsy
}

// Step 2: Establishing global variables. //
int angle = 0;

// Step 3: Drawing. //
void draw() {
  
  // *** 3.0: Background *** //
  background(0, 0, 0); // black background
  
  // *** 3.1: Truchet Tiles (Medium, red layer) *** //
  translate(75, 75); // establishing pointer.
  
  for (int i = 0; i < 5; i = i+1){
    for (int j = 0; j < 5; j = j+1){
        push();
        rotate(angle);
        fill(255, random(255), random(255)); // random red colors
        arc(0, 0, 150, 150, 0, HALF_PI+PI);
        pop();
        translate(0, 150);
        angle = angle + 1;
    }
    translate(150, -750); // start making on next column.
  }
  
  // *** 3.2: Truchet Tiles (Small, green layer) *** //
  translate(-775-50, -75); // resetting pointer.
  translate(12.5, 12.5); // establishing pointer;
  
  for (int i = 0; i < 30; i = i+1){
    for (int j = 0; j < 30; j = j+1){
        push();
        rotate(angle);
        fill(random(255), 255, random(255), 150); // random green colors
        arc(0, 0, 25, 25, 0, PI+HALF_PI);
        pop();
        translate(0, 25);
        angle = angle + 4;
    }
    translate(25, -750); // start making on next column.
  }
  
  // *** 3.3: Circles (White & black, front layer) *** //
  translate(-775+12.5, -12.5); // resetting pointer.
  translate(75, 75); // establishing pointer.
  for (int i = 0; i < 5; i = i+1){
    for (int j = 0; j < 5; j = j+1){
        if ((i + j) % 2 == 0) {
            fill(255, 255, 255, 225); // fill white
            circle(0, 0, 75);
        } else {
            fill(255, 255, 255, 50); // fill white w/ transparency.
            circle(0, 0, 150);
            fill(0, 0, 0, 225); // fill black
            circle(0, 0, 75); // so that there's a hole 
        }
        translate(0, 150);
    } 
    translate(150, -750); // start making on next column.
  }
  
}
  
        
        
      
