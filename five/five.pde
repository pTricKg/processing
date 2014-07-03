PImage img;

void setup() {

  img = loadImage("face.jpg");
  size(img.width, img.height);
  //imageMode(CENTER); // position img
  image(img, 0, 0); // present image
}

void draw() {
}  // mouseDragged doesn't work without this

void mouseDragged() {
  line(pmouseX, pmouseY, mouseX, mouseY);
  
}

//void mouseClicked() {
//  size(40, 40, P3D);
//  translate(58, 48, 0); 
//  rotateY(0.5);
//  noFill();
//  box(40, 20, 50);
//}

