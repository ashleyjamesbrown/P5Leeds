//global vars

PImage img;

//
void setup() {
  size(500, 500);

  imageMode(CENTER);

  img = loadImage("beach.jpg");

  image(img, width/2, height/2); //display it as is
}


//
void draw() {
  //copy the pixels from a location and put them in a new location
  //copy x,y,width,height, new x, new y, new height, new width
  copy(mouseX-40, mouseY-40, 80, 80, 0, 0, 40, 40);
}


//
void keyPressed() {
}