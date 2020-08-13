// Background for the game.

// Note: Recycled from third homework.
// Note: The mousePressed() function is under interactivity.pde.

void reset() {
  x = width/2;
  y = height/2;
  speedX = random(3, 5);
  speedY = random(3, 5);
  background_color = 0;
  number = 0; 
}

//** 1. Putting in constants. **//
float x, y, speedX, speedY;
float rectSize = 200;
float increment = random(3, 5);
int number = 0;
int best_score = 0;
int background_color = 0;
PFont font;
int anglea = 0;

public void videoGame() {
 
  // background
  background(background_color, 0, 0);
  
  // creating the cursor
  ellipse(mouseX, mouseY, 10, 10);
  
  // moving the ball
  x += speedX;
  y += speedY;
 
  // drawing the ellipse
  ellipse(x, y, 20, 20);
  
  // drawing the rectangles
  rect(width-20, mouseY-rectSize/2, 20, rectSize);
  rect(0, mouseY-rectSize/2, 20, rectSize);
  rect(mouseX-rectSize/2, height-20, rectSize, 20);
  rect(mouseX-rectSize/2, 0, rectSize, 20);
  
  // if ball hits any of the movable bars, invert the x-direction (or y-direction)
  if (x > width-20 && x < width && y > mouseY-rectSize/2 && y < mouseY+rectSize/2 ) {
    speedX = (speedX + increment) * -1; // right bar
    number += 1;
    background_color += 5;
    font = createFont("Raleway-ExtraBold", 50);
    textFont(font);
    text("POINT!", width/2, height/8); // POINT!
  } else if (x < 20 && x > 0 && y > mouseY-rectSize/2 && y < mouseY+rectSize/2) {
    speedX = (speedX + increment) * -1; // left bar
    number += 1;
    background_color += 5;
    font = createFont("Raleway-ExtraBold", 50);
    textFont(font);
    text("POINT!", width/2, height/8); // POINT!
  } else if (x > mouseX-rectSize/2 && x < mouseX+rectSize/2 && y < height && y > height-20) {
    speedY = (speedY + increment) * -1; // down bar
    number += 1;
    background_color += 5;
    font = createFont("Raleway-ExtraBold", 50);
    textFont(font);
    text("POINT!", width/2, height/8); // POINT!
  } else if (x > mouseX-rectSize/2 && x < mouseX+rectSize/2 && y < 20 && y > 0) {
    speedY = (speedY + increment) * -1; // up bar
    number += 1;
    background_color += 5;
    font = createFont("Raleway-ExtraBold", 50);
    textFont(font);
    text("POINT!", width/2, height/8); // POINT!
  }
  
  // live score 
  PFont font;
  textAlign(CENTER, CENTER);
  
  /**
  push();
  textAlign(CENTER, CENTER);
  font = createFont("Raleway-ExtraBold", 20);
  textFont(font);
  fill(0, 255, 0); // green color
  text("BEST: " + best_score, width - width/16, height - height/16); // current score
  pop();
  **/
  
  push();
  font = createFont("Raleway-ExtraBold", 100 + number);
  textFont(font);
  text(number, width/2, height/2 + height/4); // current score
  pop();
  
  push();
  translate(-300, -200);
  font = createFont("Raleway-ExtraBold", 50 + number);
  textFont(font);
  fill(255, 255, 255, 50);
  text(number-2, height/2, width/2); // previous score, 2 ago
  pop(); 
  
  push();
  translate(-200, -50);
  font = createFont("Raleway-ExtraBold", 100 + number);
  textFont(font);
  fill(255, 255, 255, 50);
  text(number-1, height/2, width/2); // previous score
  pop(); 
  
  push();
  translate(200, -50);
  font = createFont("Raleway-ExtraBold", 100 + number);
  textFont(font);
  fill(255, 255, 255, 50);
  text(number+1, height/2, width/2); // next score
  pop(); 
  
  push();
  translate(300, -200);
  font = createFont("Raleway-ExtraBold", 50 + number);
  textFont(font);
  fill(255, 255, 255, 50);
  text(number+2, height/2, width/2); // previous score, 2 ago
  pop(); 
  
  // if it goes out of bounds, you get reward: (from hw 2)
  if (x > width || x < 0 || y > height || y < 0) {
    
    noStroke();
    translate(75, 75); // establishing pointer.
  
    for (int i = 0; i < 5; i = i+1){
      for (int j = 0; j < 5; j = j+1){
          push();
          rotate(angle);
          fill(random(255), random(255), 255, 150); // random blue colors w/ transparency
          arc(0, 0, 150, 150, 0, HALF_PI+PI);
          pop();
          translate(0, 150);
          angle = angle + 1;
      }
      translate(150, -750); // start making on next column.
    }
    
    translate(-775-50, -75); // resetting pointer.
    
    // words saying "YOUR SCORE:"
    font = createFont("Raleway-ExtraBold", 50);
    textFont(font);
    text("YOUR SCORE:", width/2, height/8); // POINT!
    
    // creating rotating text
    push();
    textAlign(CENTER, CENTER);
    font = createFont("Raleway-ExtraBold", 100 + number);
    textFont(font);
    text(number, width/2, height/2 + height/4); // current score
    pop();
    
    // update best score
    if (best_score <= number) {
      best_score = number;
      push();
      textAlign(CENTER, CENTER);
      font = createFont("Raleway-ExtraBold", 20);
      textFont(font);
      fill(0, 255, 0); // green color
      text("NEW HIGH SCORE!", width/2, height/8 + height/16); // current score
      pop();
    }
    
  }
  
}
