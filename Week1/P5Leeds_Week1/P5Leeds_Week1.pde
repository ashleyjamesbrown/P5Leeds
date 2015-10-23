// p5leeds - workshop 1
// 8th Oct 2015
// ashleyjamesbrown


color c;
color d;

void setup() {
  size(800, 600);


  //color definitions
  colorMode(HSB); //HSB or RGB
  c = color(255, 155, 0); //rgb value
  c = color(185, 55, 150); //hsb value

  d = #00ff99; //define using hex, web values
}

void draw() {

//  background(0);

  stroke(255);
  //stroke(c);
  line(30, 30, 100, 100);

  fill(c);
  noStroke(); // no line around our shape
  triangle(width/2, height/2, 50, 300, 500, 200);

  fill(255, 10, 5);
  // ellipse(mouseX,mouseY,50,50);

  fill(8, 0, 45); //alpha
  rect(450,450,100,100);
  // rectMode(); CORNERS gives x,y of top left corner, x2,y2 of bottom right corner
  // rectMode(); default (CORNER) is x,y of top left corner and width,height
  // rectMode(); CENTER gives x,y of the center not top left and width,height



  // point(x1,y1);
  // quad(x1, y1, x2, y2, x3, y3, x4, y4);
  // arc(a, b, c, d, start, stop); //start, stop is in radians i.e PI , QUARTER_PI or for example 90degrees is roughly 1.52
  // with arcs we can use the radians() function to convert a float variable from degrees into the number we want

  // bezier(x1, y1, x2, y2, x3, y3, x4, y4)
  // start, control point1, control point2, end point

  // mousex
  // mousey

  //for loop to draw many objects with subtle vairable offsets
  if (mousePressed){
   background(0);
   drawMany(); 
  }

}


void keyPressed() {
  // save("image.png");
  saveFrame("image-###.tif"); //jpg, png, tif, tga
}




//  if (mousePressed == true) { do something}
// if (mouseButton == LEFT) check as well which button