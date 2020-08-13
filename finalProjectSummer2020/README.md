# Final Project: Sound Experience [sound.exp]

<a name='top'> </a>
### **Table of Contents.** 
##### *Note: Skip to different part of README.md using hyperlinks.*
1. [Overview / Description of Project](#description)
2. [Video of Project](#video) 
3. [Photographs of Project, Electronics and Schematic](#photo) 
4. [Idea Generation and Inspiration](#ideas)
5. [Software and Hardware Tools Used](#tools)
6. [Creation Process](#process)
7. [Final Result](#final)
8. [A Wrap-Up, Reflection and More Interesting Tidbits](#wrapup)
9. [Used References](#reference)

<a name="description"></a>
### **Overview / Description of Project**
- "Sound Experience (sound.exp) dissembles the aspects of a song and transforms them into components of art.  Using the tools of Processing coding and Arduino robotics, the project allows the participant to change what they see in front of them with only a click or a slight movement of a part.  Use this program with **any** MP3 file, and see your music come to life!"

**[BACK TO TOP](#top)**

<a name="video"></a>
### **Videos of Project** | [Video Link](https://drive.google.com/drive/folders/1gv_rlsfUEM6OU5DiO-sNx0LS0egyxEGg?usp=sharing)
- (Note: Clicking on the link will direct you to the folder with the videos covering the project.)

**[BACK TO TOP](#top)**

<a name="photo"></a>
### **Photographs of Project, Electronics and Schematic**
<img src = 'https://github.com/joshsanchez98/CreativeProgrammingAndElectronics/blob/master/finalProjectSummer2020/screen1.png' width = 450, height = 450> |
<img src = 'https://github.com/joshsanchez98/CreativeProgrammingAndElectronics/blob/master/finalProjectSummer2020/screen2.png' width = 450, height = 450> |
<img src = 'https://github.com/joshsanchez98/CreativeProgrammingAndElectronics/blob/master/finalProjectSummer2020/screen3.png' width = 450, height = 450> |
<img src = 'https://github.com/joshsanchez98/CreativeProgrammingAndElectronics/blob/master/finalProjectSummer2020/screen4.png' width = 450, height = 450> |
<img src = 'https://github.com/joshsanchez98/CreativeProgrammingAndElectronics/blob/master/finalProjectSummer2020/screen5.png' width = 450, height = 450> |
<img src = 'https://github.com/joshsanchez98/CreativeProgrammingAndElectronics/blob/master/finalProjectSummer2020/screen6.png' width = 450, height = 450>
<img src = 'https://github.com/joshsanchez98/CreativeProgrammingAndElectronics/blob/master/finalProjectSummer2020/f1.JPG' width = 600>
<img src = 'https://github.com/joshsanchez98/CreativeProgrammingAndElectronics/blob/master/finalProjectSummer2020/f2.JPG' width = 600>
<img src = 'https://github.com/joshsanchez98/CreativeProgrammingAndElectronics/blob/master/finalProjectSummer2020/FinalSchematic.jpeg' width = 600>

**[BACK TO TOP](#top)**

<a name="ideas"></a>
### **Idea Generation and Inspiration**

Initially, the following artists and artworks were my inspiration going into this project. In the end, I wasn't able to completely realize every single aspect that I had envisioned of creating, but I was definitely able to create an incorporation between audio and visuals, so Ryoji Ikeda I would say has had a more profound influence on this project. Here are the works that inspired me: 
- Ryoji Ikeda: The Transfinite. [Link](https://www.youtube.com/watch?v=omDK2Cm2mwo)  I love how he uses the simplicity of manipulating the order of long white lines but uses the contrast of light and dark accompanied with static-like sound to accentuate and to emphasize the visual and audio aspects to create a trance-like atmosphere. 
- Truchet Tiles (Former Project). [Link](https://github.com/joshsanchez98/CreativeProgrammingAndElectronics/tree/master/July_13) I had generated random rotating Pacman-looking visuals in opposite colors to create an appealing, fun, and engaging visual.  Hopefully, this may be incorporated into the Processing project.
- The Ancient Art of Painting on Water. [Link](https://www.youtube.com/watch?v=jeGqnicNS2A) I saw this artist, Garip Ay, who creates art pieces using an ancient Turkish technique called *ebru* of painting on water.  I was mesmerized by the dynamicness/movement of the colors changing, so it would be really cool to mimic that piece of art in my project.
- Reza Ali.  [Link](https://www.syedrezaali.com/) Ali is a computational designer, software engineer and artist. What inspires me the most about his artwork is his incorporation of computer algorithms into design, and as his work is featured in many places and software companies, as well as in music with Deadmau5, he would be another great artist to look up to for inspiration.

<img src = 'https://github.com/joshsanchez98/CreativeProgrammingAndElectronics/blob/master/Aug_3_Final_Project/image_1.gif' width = 450> |
<img src = 'https://github.com/joshsanchez98/CreativeProgrammingAndElectronics/blob/master/July_13/my_image.png' width = 450 height = 450> |
<img src = 'https://github.com/joshsanchez98/CreativeProgrammingAndElectronics/blob/master/Aug_3_Final_Project/image_3.gif' width = 450> |
<img src = 'https://github.com/joshsanchez98/CreativeProgrammingAndElectronics/blob/master/Aug_5_Final_Project/image_6.png' width = 450>

**[BACK TO TOP](#top)**

<a name="tools"></a>
### **Software and Hardware Tools Used**
- **Processing 3** Processing is an open project initiated by Ben Fry and Casey Rias. This software has been used to specifically create the images on the desktop associated with this project.  I am specifically using Version Processing 3.5.4.
- **Arduino** All of the Arduino-based devices are from [this](https://www.sparkfun.com/products/15267) Sparkfun's Inventor Kit.  I specifically chose to use the following physical tools to create the setup: 
  - Arduino Uno
  - LCD Display
  - 2 Potentiometers
  - 1 330 Ohm Resistor
  - Multiple Jupter Wires
  - Breadboard
(Note: Check out the schematic to understand how to wire the setup.) 

**[BACK TO TOP](#top)**

<a name="process"></a>
### **Creation Process**
1) **First iteration: Input MP3 track and have artwork that is generated change along with the music.  Only Processing.** I tried the demo Processing 3.5.4. Included, namely AudioWaveform, PeakAmplitude, and FFTSpectrum under the Sound library.  I had referenced code from these three examples to start generating inspiration.  This was successful after using the tool [AllToMP3](https://alltomp3.org/) to convert my Spotify songs to MP3, and then incorporate those MP3 files into the Processing code. 
2) **Second iteration: Generate unique backgrounds to accompany basic functionalities. Only Processing.** After confirming successful functionality, I continued to reference several other examples.  In this stage I created several different themes using the knowledge I have about creating shape generation, transformation, color manipulation, classes, and the like. 

**[BACK TO TOP](#top)**

<a name="wrapup"></a>
### **A Wrap-Up, Reflection and More Interesting Tidbits**
- **MP3 in Processing slows down the song.** I tried running my file through MP4 and MP3 free files converters online, namely [Zamzar](https://zamzar.com) and [cloudconvert](https://cloudconvert.com/mp4-to-mp3).  Unfortunately, despite the converted files seemingly working fine on Quicktime, when downloading into Processing the song would be slowed to a lower tempo, thus changing the entire key of the song.
- **Minim is the older library from Processing 2 and earlier, Sound is the newer library in Processing.** I noticed through discussing with colleagues that Processing had a library called Minim and there is some documentation for that library.  I ended up using the newer Sound library instead.
- **Communicating from Arduino can be a pain in the rear.** I had spent a considerable amount of time trying to communicate the Serial from Arduino to Processing to make it effective. I had previously tried casting, string manipulation and integer usage but to no avail.  What finally fixed the code was telling Processing to distinguish the length of the Strings that were being read from Processing. A weird solution, but it was easy incorporate because all I had to do was change the lenght of the string for each option I wanted to distinguish.
- **NOTE: NullPointException happens often.** I don't know if it's a glitch or hardware issue in Processing or Arduino, but this error happens pretty often, and I found myself having to restart the entire program again. This problem would be a great problem to address solving in the future.

**[BACK TO TOP](#top)**

<a name="reference"></a>
### **Used References**
- [processing: how to play music using minim](https://www.youtube.com/watch?v=LsADo2gcPWE)
- [How to Turn Spotify Playlists into MP3 Files on ANY Desktop Operating System](https://www.youtube.com/watch?v=o1Z5W7UU7Wo)

**[BACK TO TOP](#top)**
