PImage [] anim;
boolean ply;
boolean button;
float curPos = 0; // need float here instead of int for speed adjustment
float spdAdjst = 5.0;

int manX, manY;

Maxim maxim;
AudioPlayer player;

/* Running Man Animation */

void setup() {
  //size(640, 920);
  //setup animation
  ply = true;
  anim = loadImages("anim/anim", ".jpg", 56);

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
  imageMode(CENTER);
  manX = anim[0].width;
  manY = anim[0].height;
  if (ply) {

    if (curPos >= anim.length) {
      curPos = 0;
    } else {
      image(anim[(int)curPos], width/2, height/2, anim[0].width * 15, anim[0].height * 15); // need int for this
      curPos += 1;
    }
  }
  float ratio = 0;

  if (button) {
    fill(255, 0, 0);
  } else {
    fill(0, 255, 0);
  }
  rect(0 + width/2, 0, width/2, height/8);

  if (mouseY < height/2) {
    ratio = (float) mouseX / (float) width;
    ratio *= 2;
    player.speed(ratio);

    //curPos = curPos + 1 * spdAdjst;
  }
  fill(ratio * 128);
  rect(0, 0, width/2, height/8);
}  

void mouseDragged() {
  //  player.cue(0);
  //  player.play();

  curPos = (int)map(mouseX, 0, width, 0, anim.length-1);

  curPos = constrain(curPos, 0, anim.length-1);

  //spdAdjst = map(mouseX, 0, width, 0, 2);
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
    } else {
      player.stop();
    }
  }
  if (mouseY > height/2) {
      if (ply) {
        curPos = 0;
        ply = !ply;
      } else {
        ply = true;
      }
    }
  }


