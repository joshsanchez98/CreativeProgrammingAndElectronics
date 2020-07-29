/*
 * Plays a melody.
  Annotated from Tom Igoe of Arduino from example:
  Arduino - ToneMelody
 */

#include "pitches.h"

// notes in the melody: 
int melodyChase[] = {
  NOTE_AS4, NOTE_GS4, NOTE_AS4, NOTE_GS4,
  NOTE_AS4, NOTE_AS4, NOTE_AS4, NOTE_F4, NOTE_AS4, NOTE_F4,
  NOTE_F4, NOTE_F4, NOTE_DS4, NOTE_DS4, NOTE_F4, NOTE_DS4, NOTE_CS4, NOTE_AS3,
  NOTE_AS3, NOTE_AS3, NOTE_GS3,
  NOTE_GS3, NOTE_C4, NOTE_AS3, 
  NOTE_AS3, NOTE_AS3, NOTE_CS4, NOTE_AS3,
  NOTE_AS3, NOTE_CS4, NOTE_AS3,
  NOTE_AS3, NOTE_CS4, NOTE_AS3
};

// note durations: 4 = quarter note, 8 = eighth note, etc.:
int noteDurationsChase[] = {
  4, 4, 8, 4,
  8, 8, 8, 4, 4, 4,
  8, 8, 8, 8, 4, 8, 8, 2,
  8, 8, 2, 
  8, 8, 2,
  16, 16, 8, 4,
  8, 8, 4,
  8, 8, 4
};

// notes in the melody:
int melodyDarkSide[] = {
  NOTE_F4, NOTE_F4, NOTE_F4, NOTE_F4, NOTE_DS4, NOTE_CS4, NOTE_DS4, NOTE_F4, NOTE_GS4, NOTE_GS4,
  NOTE_DS4, NOTE_DS4, NOTE_DS4, NOTE_DS4, NOTE_CS4, NOTE_CS4, NOTE_DS4, NOTE_F4, NOTE_GS4, NOTE_GS4,
  NOTE_DS4, NOTE_DS4, NOTE_F4, NOTE_DS4, NOTE_CS4,
  NOTE_F4, NOTE_DS4, NOTE_CS4,
  NOTE_F4, NOTE_DS4, NOTE_CS4,
  NOTE_GS4, NOTE_CS5, NOTE_GS4, NOTE_GS4, NOTE_CS5, NOTE_GS4
};

// note durations: 4 = quarter note, 8 = eighth note, etc.:
int noteDurationsDarkSide[] = {
  8, 8, 8, 8, 8, 8, 8, 4, 4, 2,
  8, 8, 8, 8, 8, 8, 8, 4, 4, 2,
  8, 8, 8, 8, 2,
  8, 4, 2,
  8, 4, 2,
  8, 4, 4, 8, 4, 4
};

int melodyTheForce[] = {
  NOTE_CS5, NOTE_C5, NOTE_AS4, NOTE_FS4, 
  NOTE_FS4, NOTE_GS4, NOTE_AS4, NOTE_FS4, NOTE_C5, NOTE_AS4, NOTE_GS4, NOTE_F4,
  NOTE_F4, NOTE_FS4, NOTE_GS4, NOTE_F4, NOTE_AS4,
  NOTE_GS4, NOTE_FS4, NOTE_C5,
  NOTE_AS4, NOTE_GS4, NOTE_AS4
};

int noteDurationsTheForce[] = {
  2, 4, 4, 2, 
  8, 8, 8, 8, 2, 4, 4, 2, 
  8, 8, 8, 8, 2,
  4, 4, 2,
  4, 4, 1
};

void playSoundDarkSide() {
  // iterate over the notes of the melody:
  for (int thisNote = 0; thisNote < 37; thisNote++) {

    // to calculate the note duration, take one second divided by the note type.
    //e.g. quarter note = 1000 / 4, eighth note = 1000/8, etc.
    int noteDuration = 1000 / noteDurationsDarkSide[thisNote];
    tone(8, melodyDarkSide[thisNote], noteDuration);

    // to distinguish the notes, set a minimum time between them.
    // the note's duration + 30% seems to work well:
    int pauseBetweenNotes = noteDuration * 1.30;
    delay(pauseBetweenNotes);
    // stop the tone playing:
    noTone(8);
  }
}

void playSoundChase() {
  // iterate over the notes of the melody:
  for (int thisNote = 0; thisNote < 34; thisNote++) {

    // to calculate the note duration, take one second divided by the note type.
    //e.g. quarter note = 1000 / 4, eighth note = 1000/8, etc.
    int noteDuration = 1000 / noteDurationsChase[thisNote];
    tone(8, melodyChase[thisNote], noteDuration);

    // to distinguish the notes, set a minimum time between them.
    // the note's duration + 30% seems to work well:
    int pauseBetweenNotes = noteDuration * 1.30;
    delay(pauseBetweenNotes);
    // stop the tone playing:
    noTone(8);
  }
}

void playSoundTheForce() {
  // iterate over the notes of the melody:
  for (int thisNote = 0; thisNote < 23; thisNote++) {

    // to calculate the note duration, take one second divided by the note type.
    //e.g. quarter note = 1000 / 4, eighth note = 1000/8, etc.
    int noteDuration = 1000 / noteDurationsTheForce[thisNote];
    tone(8, melodyTheForce[thisNote], noteDuration);

    // to distinguish the notes, set a minimum time between them.
    // the note's duration + 30% seems to work well:
    int pauseBetweenNotes = noteDuration * 1.30;
    delay(pauseBetweenNotes);
    // stop the tone playing:
    noTone(8);
  }
}
