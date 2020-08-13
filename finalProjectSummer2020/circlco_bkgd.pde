// Background for the circles.

// Note: Recycling code from second homework.

public void circles() {
  
  noStroke();
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
  
  translate(-775-50, -75); // resetting pointer.
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
  
  translate(-775-50, -75); // resetting pointer.
  
  push();
  fill(153, 50);
  rect(0, 0, 750, 750);
  pop();
  
}
