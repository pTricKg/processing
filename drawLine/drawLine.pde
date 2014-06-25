void setup() {

  size(820, 640);
  background(255);
}

void draw() { }  // mouseDragged doesn't work without this

void mouseDragged() {

 line(pmouseX, pmouseY, mouseX, mouseY);
}

