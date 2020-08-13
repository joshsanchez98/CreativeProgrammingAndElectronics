// Displays the starting page for the program, displays instructions.

public void startingPage() {

  // display background first
  background(255);

  // display title
  textFont(f, 32); // specify font to be used
  fill(0);         // specify font color
  text("soundexperience [sound.exp]", 50, 200);
  
  // display description
  textFont(f, 12); // specify font to be used
  fill(0);         // specify font color
  text("welcome to sound.exp.", 50, 300);
  text("it is a project immersed in Arduino + Processing.", 50, 300+20);
  text("the user can explore their own experience just by [...] this artwork", 50, 300+60);
  text("you have the current mp3 installed:", 50, 300+80);
  text("<" + songDescription + ">", 50, 300+100); // put name of mp3 file here
  text("PRESS [SPACEBAR] TO COMMENCE", 50, 300+130);
  
  // display credits
  textFont(f, 8); // specify font to be used
  fill(0);         // specify font color
  text("by Joshua Rafael Sanchez, 2020", 50, 300+200);
  text("out of love for song and art", 50, 300+220);
  
}
