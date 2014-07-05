PImage [] anim;
boolean ply = false;
int curPos = 0;

Maxim maxim;
AudioPlayer player;
int curImage = 0;

/* Running Man Animation */
void setup() {
  //setup animation
  anim = loadImages("anim/anim", ".jpg", 28);
  //imageMode(CENTER);
  //size(anim[0].width, anim[0].height);
  
  
  // set up window
  size(300, 500);
  background(0, 0, 0);
  
  // set up sound
  maxim = new Maxim(this);
  player = maxim.loadFile("mybeat.wav");
  player.setLooping(true);
  player.play();
  
}

void draw() {
//  image(anim[curImage]);
//  curImage += 1;
  //float imageWidth = (height*anim[curPos].width)/anim[curPos].height;
  if(ply) {
    image(anim[curPos], 0, 0, 300, 500);
    //curPos += 1;
    if (curPos >= anim.length) {
      curPos = 0;
    }
  }

  float ratio = (float) mouseX / (float) width;
  ratio *= 2;
  player.speed(ratio);
  
  
}  // mouseDragged doesn't work without this

void mouseDragged() {
  player.cue(0);
  player.play();
  
  curPos = (int)map(mouseX, 0, width, 0, anim.length-1);
  
  curPos = constrain(curPos, 0, anim.length-1);
}

void mouseClicked() {
//  curPos = 0;
  ply = !ply;
}

