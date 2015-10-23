//p5leeds week3
//ashley james brown oct 2015


import processing.opengl.*;

Particle p;
ArrayList things;


////////////////////////// main setup
void setup() {
  size(800, 600);
  smooth();
  things = new ArrayList();

  // how many - lets say 50

  for (int i=0; i<50; i++) {
    things.add(new Particle(random(0, width), random(0, height), random(5, 40)));
  }
}

//////////////////// main draw loop

void draw() {


  //fake blur
  fill(0, 30);
  rect(0, 0, width, height);


  for (int i=0; i<things.size(); i++) {
    Particle p = (Particle) things.get(i);
    p.draw();
    p.movement();
  }
}//end void