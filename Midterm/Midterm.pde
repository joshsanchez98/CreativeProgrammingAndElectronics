// Joshua Rafael Sanchez
// Prof. Michael Shiloh
// DES INV 23: Creative Programming and Design 
// 20 July 2020 
// Midterm

// importing appropriate libraries
import processing.sound.*; // importing sound
import processing.video.*; // importing video
WhiteNoise noise; // declaring white noise object
Movie movie; // declaring movie object

// setting up canvas
void setup(){
  
  // size of window
  size(1000, 700);
  
  // no stroke, no cursor when hovering
  noStroke();
  noCursor();
  
  // create and start the noise generator
  noise = new WhiteNoise(this);
  noise.play();
  noise.amp(0); 
  
  // creating movie at the end
  movie = new Movie(this, "Dancing.mov");
  movie.loop();
  
}

// establish global variables
int[] numColor = {0, 220, 255}; // for static screen
float xTarget = random(250, width-250); // for random x location initially
float yTarget = random(250, height-250); // for random y location initially
int roundNumber = 10; // telling you the number of the round
PFont font; // establishing font variable
String PATH = "/Dancing.mov"; // path to the video
boolean showMovie = false; // making sure movie can be shown
int qualityScore = 0; // quality score starts at 0

// reset certain variables
void reset() {
  xTarget = random(250, width-250);
  yTarget = random(250, height-250); // random x and y targets
}

void draw(){
  
  // 0. Creating the Setup
  background(218,165,32); // golden background
  
  // 1. Creating TV Static //
  loadPixels(); // loads pixel data
  int correction = 1000*100 + 100;
  for (int i = 0; i < height-200; i++) {
    for (int j = 0; j < width-200; j++) {
      int rand = (int)random(2);
      if (abs(xTarget - mouseX) > 50 || abs(yTarget - mouseY) > 50) {
            color myColor = color(numColor[rand], 
                       numColor[rand],
                       numColor[rand]);
            pixels[correction + j] = myColor;
            
      } else { // if cursor not over problem, screen stays the same
            color myColor = color(255, 
                       numColor[rand],
                       numColor[rand]);
            pixels[correction + j] = myColor;
      }
    }
    correction += 200 + width-200;
  }
  updatePixels(); // uploads pixel data
  correction = 0; // to correct for later
  
  // 2. Randoming Sounds Concentration //
  if (abs(xTarget - mouseX) > 200 || abs(yTarget - mouseY) > 200) {
    noise.amp(0.1); // noise change
    fill(255, 204, 204); 
    ellipse(mouseX, mouseY, 10, 10); // cursor color change
    
  } else if (abs(xTarget - mouseX) > 100 || abs(yTarget - mouseY) > 100) {
    noise.amp(0.5);
    fill(255, 102, 102);
    ellipse(mouseX, mouseY, 10, 10);
    
  } else if (abs(xTarget - mouseX) > 50 || abs(yTarget - mouseY) > 50) {
    noise.amp(1);
    fill(255, 0, 0);
    ellipse(mouseX, mouseY, 10, 10);
    
  } else {
    noise.amp(1.5);
    fill(153, 0, 0);
    ellipse(mouseX, mouseY, 10, 10);
    font = createFont("Raleway-ExtraBold", 20);
    textFont(font);
    fill(255, 0, 0);
    text("Hot Spot!", width/16, height/10); // gives text indicator
    
  }
  
  /** 3. Text/Cursor **/
  
  font = createFont("Raleway-ExtraBold", 20);
  textFont(font);
  fill(255, 255, 255);
  text(roundNumber+" problems left to fix!", width/16, height/16); // says round number
  
  font = createFont("Raleway-ExtraBold", 20);
  textFont(font);
  fill(255, 255, 255);
  text("Goal: Fix the screen by clicking where it's loudest!",
        width/16, (height - height/16)); // gives a hint to the player
    
  if (roundNumber <= 0) {
    font = createFont("Raleway-ExtraBold", 15);
    textFont(font);
    fill(255, 255, 255);
    text("DOUBLE CLICK TO PLAY AGAIN",
    width*0.70, (height - height/16)); // says click to play again
  }
        
  /** 4. Movie **/    
  
  if (roundNumber <= 0) {
    push();
    translate(width/2, height/2);
    imageMode(CENTER);
    image(movie, 0, 0, 800, 400); // run the movie
    pop();
  }
  
  /** 5. Finishing Touches **/
  push(); 
  translate(100, 100); 
  fill(0, 0, 0);
  rect(0, 0, 800, 50);
  translate(0, 450);
  rect(0, 0, 800, 50);
  pop(); // widescreen. it is a movie, after all.
  
  /** 6. Results. **/
  
  // If you get a score of 3 or less.
  // The television remains broken.
  if (qualityScore < 4 && roundNumber <= 0) {
    
    qualityScore = 0; // quality score resets at 0
    loadPixels(); // loads pixel data
    correction = 1000*100 + 100;
    for (int i = 0; i < height-200; i++) {
      for (int j = 0; j < width-200; j++) {
        int rand = (int)random(2);
        if (abs(xTarget - mouseX) > 50 || abs(yTarget - mouseY) > 50) {
              color myColor = color(numColor[rand], 
                         numColor[rand],
                         numColor[rand],
                         100);
              pixels[correction + j] = myColor;
              
        } else { // if cursor not over problem, screen stays the same
              color myColor = color(255, 
                         numColor[rand],
                         numColor[rand],
                         100);
              pixels[correction + j] = myColor;
        }
      }
      correction += 200 + width-200;
    }
    updatePixels(); // uploads pixel data
    
    push(); 
    translate(100, 100); 
    fill(0, 0, 0);
    rect(0, 0, 800, 50);
    translate(0, 450);
    rect(0, 0, 800, 50);
    pop(); // widescreen. it is a movie, after all.
    
    font = createFont("Raleway-ExtraBold", 20);
    textFont(font);
    fill(0, 0, 0);
    text("Whoops! Be more careful, it's broken. Try again!",
        width*0.40, height/16); // bad score message
    text("You fixed 3 or less problems.", width*0.40, height/16 + 30); 
  
  // If you get a score between 3 and 8 (exclusive).
  // The television shows video, but it lags.
  } else if (qualityScore > 3 && qualityScore < 8 && roundNumber <= 0) {
    frameRate(3);
    font = createFont("Raleway-ExtraBold", 20);
    textFont(font);
    fill(0, 0, 0);
    text("Almost there! Your connection's kind of spotty.",
        width*0.40, height/16); // fair score message
    text("You fixed more than 3 problems, but less than 8.", width*0.40, height/16 + 30);
    
  // If you get a score of 8, 9 or 10.
  // The television shows video perfectly.
  } else if (roundNumber <= 0 && qualityScore >= 8) {
    font = createFont("Raleway-ExtraBold", 20);
    textFont(font);
    fill(0, 0, 0);
    text("Yay! You fixed it!",
        width*0.40, height/16); // good score message
    text("You fixed 8 or more problems.", width*0.40, height/16 + 30);
  } 
  
}

// for running the movie
void movieEvent(Movie movie) {
  movie.read();
}

void mousePressed(){
  
  if (abs(mouseX-xTarget) < 50 || abs(mouseY-yTarget) < 50) {
      qualityScore += 1;
  }
  
  if (roundNumber > 0) { // game is still going
      loop();
      roundNumber -= 1;
      showMovie = false;
      reset();
      
  } else {
      roundNumber = 11; // game is finished
      noLoop(); // stop running game
      showMovie = true;
      qualityScore = 0;
      frameRate(50);
  }
  
}
