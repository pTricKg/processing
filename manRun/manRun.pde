PImage [] anim;
boolean ply;
boolean button;
int curPos = 0;

Maxim maxim;
AudioPlayer player;

/* Running Man Animation */

void setup() {
  //setup animation
  ply = true;
  anim = loadImages("anim/anim", ".jpg", 28);

  // set up window
  //size(width, height);
  background(0, 0, 0);

  // set up sound
  button = false;
  maxim = new Maxim(this);
  player = maxim.loadFile("mybeat.wav");
  player.setLooping(true);
  player.play();
}

void draw() { // mouseDragged doesn't work without this
  //  image(anim[curImage]);
  //  curImage += 1;
  //float imageWidth = (height*anim[curPos].width)/anim[curPos].height;
  if (ply) {
    image(anim[curPos], 0, 0, width, height);
    curPos += 1;
    if (curPos >= anim.length) {
      curPos = 0;
    }
  }
  float ratio = 0;

  if (button) {
    fill(255, 0, 0);
  }
  else {
    fill(0, 255, 0);
  }
  rect(0 + width/2, 0, width/2, height/8);

  if (mouseY < height/2) {
    ratio = (float) mouseX / (float) width;
    ratio *= 2;
    player.speed(ratio);
  }
  fill(ratio * 128);
  rect(0, 0, width/2, height/8);
}  

void mouseDragged() {
  //  player.cue(0);
  //  player.play();

  curPos = (int)map(mouseX, 0, width, 0, anim.length-1);

  curPos = constrain(curPos, 0, anim.length-1);
}
//void mouseClicked() {
//  curPos = 0;
//  ply = !ply;
//}
void mousePressed() {
  if (mouseY < height/8) {
    button = !button;
    if (button) {
      player.play();
    }
    else {
      player.stop();
    }
  }
  if (mouseY > height/2) {
    if (ply) {
      curPos = 0;
      ply = !ply;
    }else {
      ply = true;
    }
  }
}

