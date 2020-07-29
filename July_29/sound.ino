/*
 * Adding the sound to the program.
 * (Code taken from Arudino examples.)
 */

# include "pitches.h"    // including notes

// (0) establish only certain parts, from Processing //
int dataBlue = 2;
int dataGreen = 2;

// (1) playing the blue button hints //

// establishing melodies
int melodyBlue[] = {
  NOTE_C2, NOTE_C3, NOTE_C4, NOTE_C5
}; 
int noteDurationsBlue[] = {
  2, 2, 2, 2
}; 

// playing melody
void playBlue() {
  for (int thisNote = 0; thisNote < dataBlue; thisNote++) {
    
    // to calculate the note duration, take one second divided by the note type.
    //e.g. quarter note = 1000 / 4, eighth note = 1000/8, etc.
    int noteDuration = 1000 / noteDurationsBlue[thisNote];
    tone(8, melodyBlue[thisNote], noteDuration);

    // to distinguish the notes, set a minimum time between them.
    // the note's duration + 30% seems to work well:
    int pauseBetweenNotes = noteDuration * 1.30;
    delay(pauseBetweenNotes);
    // stop the tone playing:
    noTone(8);
    
  }
}

// (2) playing the green button hints


// establishing melodies
int melodyGreen[] = {
  NOTE_C4, NOTE_D4, NOTE_E4, NOTE_F4, NOTE_G4, NOTE_A4,
  NOTE_B4, NOTE_C5
}; 
int noteDurationsGreen[] = {
  8, 8, 8, 8, 8, 8, 8, 8
}; 

// playing melody
void playGreen() {
  for (int thisNote = 0; thisNote < dataGreen; thisNote++) {
    
    // to calculate the note duration, take one second divided by the note type.
    //e.g. quarter note = 1000 / 4, eighth note = 1000/8, etc.
    int noteDuration = 1000 / noteDurationsGreen[thisNote];
    tone(8, melodyGreen[thisNote], noteDuration);

    // to distinguish the notes, set a minimum time between them.
    // the note's duration + 30% seems to work well:
    int pauseBetweenNotes = noteDuration * 1.30;
    delay(pauseBetweenNotes);
    // stop the tone playing:
    noTone(8);
    
  }
}
