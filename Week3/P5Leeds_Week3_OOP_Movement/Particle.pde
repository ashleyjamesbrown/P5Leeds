//-----------------------------------------------------
class Particle {
  // PVector position; // dont need this

  //POSITION
  float x;
  float y;
  float z;

  //DIAMETER
  float size;

  //use pos later we will increment it but use sin and cos to osscilate it
  float pos=0;

  //-----------------------------------------------------
  Particle(float newX, float newY, float newSize) {

    this.x = newX;
    this.y = newY;
    this.size = newSize;    
    //position = new PVector (x, y); //not required as we wont do anything with it this lesson
  }

  //-----------------------------------------------------
  void draw() {
    fill(255, 130); // the fill colour will be for each object - if we change this then every object has the same colour
    //experiment by using random here and then every object will have a random assigned colour
    noStroke();
    ellipse(this.x, this.y, this.d, this.d);
  }

  void movement() {
    //adding random will just give a slight unpredictable movement
    x+= random(0, 10) * sin(pos);
    y+= random(0, 10) * cos(pos);
    pos+=0.02; 
    // increase the number of pos will mean it will take longer to travel through the sin from 0 to 1 and therefore will 'move' slower
  }
}