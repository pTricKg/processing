PImage [] anim;

/* not quite sure
  what is happening here
  but more work to come*/

void setup() {
  //setup animation
  anim = new PImage[14];
  int curImage = 0;
  
  
  size(820, 640);
  background(0, 0, 0);
  
}

void draw() {
  image(anim[curImage]);
  curImage += 1;
}  // mouseDragged doesn't work without this

void mouseDragged() {
  
}

void mouseClicked() {
  curImage = 0;
}

