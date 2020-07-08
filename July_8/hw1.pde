// Joshua Rafael Sanchez
// Professor Michael Shiloh
// DES INV 23: Creative Programming and Electronics
// July 8th, 2020
// HW 1: Production Assignment

// Copyright 2020, Joshua Rafael Sanchez, all rights reserved.

// *** Step 0: Setting up background. ***

rectMode(CENTER); 
ellipseMode(CENTER); // setting up modes

size(550, 650); 
background(#f2f2f2); // setting up overall backgrounds

fill(#070B34);
noStroke();
rect(550*0.75, 650*0.5, 275, 650); // setting up night background

fill(#c2b280);
noStroke();
ellipse(0, 400, 400, 300); // left ground

fill(#807e78);
noStroke();
ellipse(550, 400, 400, 300);// right ground

rectMode(CORNER); 
ellipseMode(CORNER); // switch modes for following part

fill(#f2f2f2);
noStroke();
rect(0, 400, 275, 650); // left ground correction

fill(#070B34);
noStroke();
rect(275, 400, 550, 650); // right ground correction

rectMode(CENTER); 
ellipseMode(CENTER); // reset modes

fill(#FCD440);
noStroke();
arc(0, 0, 150, 150, 0, 180); // sun

fill(#CACACA);
noStroke();
arc(550, 0, 150, 150, 0, 180); // moon

/* 0.1 building buildings: */

// Define variables.
float w_ub_base = 30*1.2; // width of US Bank base
float h_ub_base = 60*1.2; // height of US Bank base
float x_loc_ub = 455; // x location of US Bank base
float y_loc_ub = 270; // y location of US Bank base

// US Bank Building
fill(85, 85, 85);
noStroke();
rect(x_loc_ub, y_loc_ub, w_ub_base, h_ub_base); 
rect(x_loc_ub, y_loc_ub-40, w_ub_base-6, h_ub_base/3);
rect(x_loc_ub, y_loc_ub-55, w_ub_base-12, h_ub_base/6); 
rect(x_loc_ub, y_loc_ub-65, w_ub_base-16, h_ub_base/4); 

// Korean Air Building
fill(#8cbed6);
noStroke();
rect(x_loc_ub-45, y_loc_ub+5, w_ub_base, h_ub_base);
arc(x_loc_ub+18-45, y_loc_ub-30+5, 70, 70, PI, 1.5*PI, PIE);

// Bank of America Plaza 
fill(#D3D3D3);
noStroke();
rect(x_loc_ub+45, y_loc_ub-5, w_ub_base, h_ub_base); // building
fill(#D3D3D3);
noStroke();
rect(x_loc_ub+45, y_loc_ub-45, w_ub_base, h_ub_base/10); // building
stroke(0);
strokeWeight(2);
line(x_loc_ub+45, y_loc_ub-5+36, x_loc_ub+45, y_loc_ub-5-36); 
line(x_loc_ub+45+5, y_loc_ub-5+36, x_loc_ub+45+5, y_loc_ub-5-36); 
line(x_loc_ub+45-5, y_loc_ub-5+36, x_loc_ub+45-5, y_loc_ub-5-36); 
line(x_loc_ub+45+10, y_loc_ub-5+36, x_loc_ub+45+10, y_loc_ub-5-36); 
line(x_loc_ub+45-10, y_loc_ub-5+36, x_loc_ub+45-10, y_loc_ub-5-36); 
line(x_loc_ub+45+15, y_loc_ub-5+36, x_loc_ub+45+15, y_loc_ub-5-36); 
line(x_loc_ub+45-15, y_loc_ub-5+36, x_loc_ub+45-15, y_loc_ub-5-36); 

// Extra buildings 
rectMode(CORNER); 
ellipseMode(CORNER); // setting up modes, again
for (int i = 0; i < 13; i = i+1) {
  float r_1 = random(10,30);
  float r_2 = -random(10,60);
  fill(0,0,0);
  noStroke();
  rect(i*12 + 380, 340 - i*2, r_1, r_2);
  fill(#C3D9FF);
  noStroke();
  rect(random(i*12 + 380, i*12 + 380 + r_1), random(340 - i*2, 340 - i*2 + r_2), 2, 2);
}

rectMode(CENTER); 
ellipseMode(CENTER); // setting up modes, again



/* 0.2 Creating plants: */

for (int i = 0; i < 2; i = i+1) {

  float x_adj = -75 + i*80;
  float y_adj = +60 + i*40;
  
  fill(#234311);
  noStroke();
  circle(100+x_adj, 100+y_adj, 60);
  fill(#f2f2f2);
  noStroke();
  ellipse(100+x_adj, 120+y_adj, 80, 50); // leaf 1
  
  fill(#234311);
  noStroke();
  circle(160+x_adj, 100+y_adj, 60);
  fill(#f2f2f2);
  noStroke();
  ellipse(160+x_adj, 120+y_adj, 80, 50); // leaf 2
  
  fill(#234311);
  noStroke();
  circle(105+x_adj, 120+y_adj, 60);
  fill(#f2f2f2);
  noStroke();
  circle(115+x_adj, 135+y_adj, 60); // leaf 3
  
  fill(#234311);
  noStroke();
  circle(160+x_adj, 120+y_adj, 60);
  fill(#f2f2f2);
  noStroke();
  circle(150+x_adj, 135+y_adj, 60); // leaf 4
  
  fill(#654321);
  noStroke();
  rect(130+x_adj, 170+y_adj, 15, 120); // trunk
  
  fill(#100b09);
  noStroke();
  circle(125+x_adj, 105+y_adj, 15);
  circle(135+x_adj, 105+y_adj, 15);
  circle(130+x_adj, 113+y_adj, 15); // coconuts
}

// Step 1: Drawing person figure.

float width_head = 75*.60; // head dim var
float height_head = 97.5*.60; // head dim var
float width_body = 75; // body dim var

fill(128,0,0);
noStroke();
triangle(275 + width_body*0.5, 300, 275 - width_body*0.5, 300, 275, 280); // upper body

fill(128,0,0);
noStroke();
triangle(275 + width_body*0.5, 300, 275 - width_body*0.5, 300, 275, 480); // lower body

fill(#f2f2f2);
noStroke();
rect(275, 430, 40, 110); // rectangle cover triangle

fill(#91a3b0);
noStroke();
rect(275-11, 430, 20, 110); // leg, left

fill(#91a3b0);
noStroke();
rect(275+11, 430, 20, 110); // leg, right

fill(0, 0, 0);
noStroke();
rect(275, 380, 42, 10); // belt

fill(128,0,0);
noStroke();
ellipse(275-42,350,15,80); // arm, left

fill(128,0,0);
noStroke();
ellipse(275+42,350,15,80); // arm, right

fill(0,139,139);
noStroke();
arc(275, 250, 50, 50, PI, 2*PI, PIE); // earphones, middle connector

fill (224,172,105);
noStroke();
ellipse(275,260,width_head,height_head); // head

fill(0,139,139);
noStroke();
ellipse(275-25,260,15,25); // earphones, left earpiece

fill(0,139,139);
noStroke();
ellipse(275+25,260,15,25); // earphones, right earpiece
