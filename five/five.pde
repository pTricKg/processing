PImage img;
PImage img1;

void setup() {

  img = loadImage("face.jpg");
  size(820, 640);
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
  //  imageMode(CENTER); // position img
  img1 = loadImage("face1.jpg");
  image(img1, pmouseX, pmouseY); // present image
}

//void mouseClicked() {
//  size(40, 40, P3D);
//  translate(58, 48, 0); 
//  rotateY(0.5);
//  noFill();
//  box(40, 20, 50);
//}

