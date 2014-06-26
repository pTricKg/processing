

float red = map(mouseX, 0, width, 0, 255);
// distance between mouse and screen center

float green = dist(mouseX, mouseY, width/2, height/2);
// map mouse position within range 0, 255

lineWidth = constrain(lineWidth, 0, 10);
// line width between 0 and 10

