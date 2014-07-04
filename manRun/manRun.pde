PImage [] anim;

/* not quite sure
  what is happening here
  but more work to come*/

void setup() {
  //setup animation
  anim = new PImage[14]
  int curImage = 0;
  
  
  size(820, 640);
  background(0, 0, 0);
  //size(img.width, img.height);
  imageMode(CENTER); // position img
  //int imgheight = 100*img.height/img.width; // preserves aspect ration
  image(img, width/2, height/2); // present image
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

