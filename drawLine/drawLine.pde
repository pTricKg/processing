//Audio variables
Maxim maxim;
AudioPlayer player;

void setup() {

  size(820, 640);
  background(255);
  maxim = new Maxim(this);
  player = maxim.loadFile("thunder.mp3");
  
}

void draw() {
}  // mouseDragged doesn't work without this

void mouseDragged() {

  line(pmouseX, pmouseY, mouseX, mouseY);
  box(40,20,50);
}

void mousePressed() {
  player.cue(0);
  player.play();
}

