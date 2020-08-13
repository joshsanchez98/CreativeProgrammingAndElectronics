// Houses all the code for the background of the visualization.

// Resources:
// Processing 3.5.4 Example: example_14_01_growing_rect
// Processing 3.5.4 Example: example_9_10_array_interactive_objects
// Processing 3.5.4 Example: example_17_03_scrollingtext

//** (1) Lightspeed **//

float r = 8; // starting size

public void lightspeed() {

  // Display a rectangle in the middle of the screen
  stroke(0);
  fill(100);
  rectMode(CENTER);
  rect(width/2, height/2, r, r);

  // Increase the rectangle size
  r = r + 10;

  // Start rectangle over
  if (r > width) {
    r = 0;
  }
}

//** (2) Blinding lights **//

class Stripe {
  
  float x;     // horizontal location of stripe
  float speed; // speed of stripe
  float w;     // width of stripe
  
  // A boolean variable keeps track of the object's state.
  boolean mouse; // state of stripe (mouse is over or not?)

  Stripe() {
    x = width/2;               // All stripes start at middle of artwork
    speed = random(5);         // All stripes have a random positive speed
    speed = random(5); 
    w = random(20,120);
    mouse = false;
  }

  // Draw stripe
  void display() {
    
    // Boolean variable determines Stripe color.
    if (mouse) { 
      fill(255,100);
    } else {
      fill(255,50);
    }
    
    noStroke();
    rect(x, 0, w, height*2);
  }

  // Move stripe right
  void moveRight() {
    x += speed;
    if (x > width + 20) x = -20;
  }
  
  // Move stripe left
  void moveLeft() {
    x -= speed;
    if (x < -20) x = width + 20;
  }

// Check to see if point (mx,my) is inside the Stripe.
  void rollover(int mx, int my) { 
    // Left edge is x, Right edge is x + w
    if (mx > x && mx < x + w) {
      mouse = true;
    } else {
      mouse = false;
    }
  }
}

public void blindingLights() {
  
  // Move and display all Stripe objects
  for (int i = 0; i < stripesLeft.length; i ++ ) {    // Check if mouse is over the Stripe
    stripesLeft[i].rollover(mouseX,mouseY);           // Passing the mouse coordinates into an object.
    stripesLeft[i].moveLeft();
    stripesLeft[i].display();
  }
  for (int i = 0; i < stripesRight.length; i ++ ) {    // Check if mouse is over the Stripe
    stripesRight[i].rollover(mouseX,mouseY);           // Passing the mouse coordinates into an object.
    stripesRight[i].moveRight();
    stripesRight[i].display();
  }
  
}
