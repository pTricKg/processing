PImage [] anim;
boolean ply = false;
int curPos = 0;

/* Running Man Animation */
void setup() {
  //setup animation
  //anim = new PImage[14];
  anim = loadImages("data/anim/", ".jpg", 14);
  //size(anim[0].width, anim[0].height);
  int curImage = 0;
  
  
  size(820, 640);
  background(0, 0, 0);
  
}

void draw() {
//  image(anim[curImage]);
//  curImage += 1;
  if(ply) {
    image(anim[curPos], 0, 0, 300, 500);
    curPos += 1;
    if (curPos >= anim.length) {
      curPos = 0;
    }
  }

  
  
  
}  // mouseDragged doesn't work without this

void mouseDragged() {
  
}

void mouseClicked() {
  curPos = 0;
  ply = !ply;
}

