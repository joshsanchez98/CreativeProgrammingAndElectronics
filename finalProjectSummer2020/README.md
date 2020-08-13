# Final Project: Sound Experience [sound.exp]

### **Table of Contents.** *Skip to different part of README.md using hyperlinks.*
1. [Video of Project](#video)
2. [Photographs of Project, Electronics and Schematic](#photo)
3. [Overview / Description of Project](#description)
4. [Idea Generation and Inspiration](#ideas)
5. [Software and Hardware Tools Used](#tools)
6. [Creation Process](#process)
7. [A Wrap-Up, Reflection and More Interesting Tidbits](#wrapup)
8. [Used References](#reference)


<a name="video"></a>
### **Video of Project** | [Video Link](https://drive.google.com/drive/folders/1gv_rlsfUEM6OU5DiO-sNx0LS0egyxEGg?usp=sharing)
- (Note: Clicking on the link will direct you to the folder with the video covering the project.)

<a name="photo"></a>
### **Photographs of Project, Electronics and Schematic**
<img src = 'https://github.com/joshsanchez98/CreativeProgrammingAndElectronics/blob/master/finalProjectSummer2020/screen1.png' width = 600 height = 600>
<img src = 'https://github.com/joshsanchez98/CreativeProgrammingAndElectronics/blob/master/finalProjectSummer2020/screen2.png' width = 600 height = 600>
<img src = 'https://github.com/joshsanchez98/CreativeProgrammingAndElectronics/blob/master/finalProjectSummer2020/screen3.png' width = 600 height = 600>
<img src = 'https://github.com/joshsanchez98/CreativeProgrammingAndElectronics/blob/master/finalProjectSummer2020/screen4.png' width = 600 height = 600>
<img src = 'https://github.com/joshsanchez98/CreativeProgrammingAndElectronics/blob/master/finalProjectSummer2020/screen5.png' width = 600 height = 600>

<a name="description"></a>
### **Overview / Description of Project**
- "Sound Experience (sound.exp) dissembles the aspects of a song and transforms them into components of art.  Using the tools of Processing coding and Arduino robotics, the project allows the participant to change what they see in front of them with only a click or a slight movement of a part.  Use this program with **any** MP3 file, and see your music come to life!"

<a name="ideas"></a>
### **Idea Generation and Inspiration**


<a name="tools"></a>
### **Software and Hardware Tools Used**
- **Processing 3** Processing is an open project initiated by Ben Fry and Casey Rias. This software has been used to specifically create the images on the desktop associated with this project.  I am specifically using Version Processing 3.5.4.
- **Arduino** All of the Arduino-based devices are from [this](https://www.sparkfun.com/products/15267) Sparkfun's Inventor Kit.

<a name="process"></a>
### **Creation Process**
1) **First iteration: Input MP3 track and have artwork that is generated change along with the music.  Only Processing.** I tried the demo Processing 3.5.4. Included, namely AudioWaveform, PeakAmplitude, and FFTSpectrum under the Sound library.  I had referenced code from these three examples to start generating inspiration.  This was successful after using the tool [AllToMP3](https://alltomp3.org/) to convert my Spotify songs to MP3, and then incorporate those MP3 files into the Processing code. 
2) **Second iteration: Generate unique backgrounds to accompany basic functionalities. Only Processing.** After confirming successful functionality, I continued to reference several other examples.  In this stage I created several different themes using the knowledge I have about creating shape generation, transformation, color manipulation, classes, and the like.  
Final Presentation

<a name="wrapup"></a>
### **A Wrap-Up, Reflection and More Interesting Tidbits**
- **MP3 in Processing slows down the song.** I tried running my file through MP4 and MP3 free files converters online, namely [Zamzar](https://zamzar.com) and [cloudconvert](https://cloudconvert.com/mp4-to-mp3).  Unfortunately, despite the converted files seemingly working fine on Quicktime, when downloading into Processing the song would be slowed to a lower tempo, thus changing the entire key of the song.
- **Minim is the older library from Processing 2 and earlier, Sound is the newer library in Processing.** I noticed through discussing with colleagues that Processing had a library called Minim and there is some documentation for that library.  I ended up using the newer Sound library instead.
- **Communicating from Arduino can be a pain in the rear.** I had spent a considerable amount of time trying to communicate the Serial from Arduino to Processing to make it effective. I had previously tried casting, string manipulation and integer usage but to no avail.  What finally fixed the code was telling Processing to distinguish the length of the Strings that were being read from Processing. A weird solution, but it was easy incorporate because all I had to do was change the lenght of the string for each option I wanted to distinguish.

<a name="reference"></a>
### **Used References**
- [processing: how to play music using minim](https://www.youtube.com/watch?v=LsADo2gcPWE)
- [How to Turn Spotify Playlists into MP3 Files on ANY Desktop Operating System](https://www.youtube.com/watch?v=o1Z5W7UU7Wo)
