# Production Assignment: Work of Art

![Yes](https://github.com/joshsanchez98/CreativeProgrammingAndElectronics/blob/master/July_13/my_image.png)

**Description of Inspiration**

I do not possess an extensive art history background, but through watching videos of talks and reading research, I was inspired by the following resources: 

- [Casey Reas’ Eyes Talk on Chance Operations](https://vimeo.com/45851523).  Reas introduced AI in art: “Make something artificial but still have an organic quality to it.”  I want to eventually use AI to transform quantitative data into art that helps the viewer understand their data in a creative way.  (The AI is not reflected in this art piece, but in further iterations, I really want to incorporate this.)

- [Nonotak](https://www.youtube.com/watch?v=UY7l_UgHhBQ): Collaboration between an illustrator and architect musician.  Light and sound installations, “creating an ethereal, immersive and dreamlike environment meant to envelope the viewer.”  This would explain the transparent color choices and circular motion of each of the shapes. Eventually, more features would be added that reflect this perspective, such as adding immersive sound, and using that sound to drive the art piece forward.

- Truchet Tiles: This was found from the [website](https://sites.google.com/site/desinv23summer2019/slides/patterns). In high school, I took two graphic design courses, and I started to develop my loves for simple, yet, regenerative patterns like these below.  The illusions interest me because you can create such imaginative and out-of-the-box designs even in the construct of order.  

![Yes](https://github.com/joshsanchez98/CreativeProgrammingAndElectronics/blob/master/July_13/truchet_tiles.png)

**Description of Rules Used to Create This Artwork, and Programming**

- All shapes are generated with a transparent fill. I wanted to see how colors can combine with each other. I really played around with the transparency.  I used the alpha argument often.

- All shapes should have random color, but within a certain color scheme. To achieve this end, I made the small circles randomize the red and blue values while keeping green at 255, while I did something similar for the larger circles by putting the red value at 255 and randomizing the remaining two.

- All shapes need to be touching each other and fill entirely within the screen.  This was achieved through careful for() loop creation and a few steps of arithmetic. 

- All the ¾ circles generated must be rotating in-place.  I used rotate(), push(), and pop() to make sure that this happens, and each of these functions had been used in a certain order to achieve this.

**Difficulties I Had and How I Overcame Them**

- Drawing the circles in the right place.  Translate()  was a BIG help.  In my for() loop, I used translate() following each shape generation to move the “pointer” to another location. 

- Covering the entire screen correctly without circle overlap or cutoff.  I did mental math to move the pointer to its proper position for the layer, each of which had different sizes of the circle.  For example, when making the red layer, then the green layer, I needed to scale down all my circles.  To do this, I had to go through some scaling procedures.

**Interesting Things That I Discovered**

- The advantage of using classes. While I did not use classes in this exercise, I now believe it would have been much easier to envision what I had initially.  I initially wanted for each of the circles to bounce and to move all around the screen, but every implementation I had referenced used classes, and unfortunately, I am still not all too familiar with the syntax. 
- Bright colors can cause epilepsy-like visuals.  I made my colors too bright, so I needed to tone down my colors using transparency so that the user won’t be too shocked!

