// Simple beginnings

size(820, 640);  //Sets window size: x,y

background(119, 232, 15);  

strokeWeight(6); //Set pixel size

point(100, 100); //Draw pixel

line(200, 200, 300, 800);  // Draw line: x,y, start and x,y end

rect(400, 400, 100, 100); 

// set-up for animating
PImage [] anim = new PIimage[4]; // array example

int currentImage = 0;

image(anim[currentImage]; // going through array with image

currentImage += 1 // increment image for anim
