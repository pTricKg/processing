PImage img;

/* not quite sure
  what is happening here
  but more work to come*/

void setup() {

  img = loadImage("face.jpg");
  size(820, 640);
  background(0, 0, 0);
  //size(img.width, img.height);
  imageMode(CENTER); // position img
  //int imgheight = 100*img.height/img.width; // preserves aspect ration
  image(img, width/2, height/2); // present image
}

void draw() {
}  // mouseDragged doesn't work without this

void mouseDragged() {
  strokeWeight(25);
  line(pmouseX, pmouseY, pmouseX, pmouseY);
  image(img, pmouseX, pmouseY); // present image
}

void mouseClicked() {
  img = loadImage("face.jpg");
  background(0, 0, 0);
  imageMode(CENTER);git 
  //  size(40, 40, P3D);
  //  translate(58, 48, 0); 
  //  rotateY(0.5);
  //  noFill();
  //  box(40, 20, 50);
}

