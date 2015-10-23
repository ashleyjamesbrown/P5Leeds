//grid drawing

// Grid layout based on columns (xAxis) & rows (yAxis)
int cols=10;
int rows=10; 

int gridScale=60;
float randomScale =0.0;

PImage img;

void setup(){
  size(800,600);
  background(0);
  
  img = loadImage("image.jpg");
  
}



void draw(){

 background(0);
 
 for (int i = 0; i < cols; i++) {
    // Begin loop for rows
    for (int j = 0; j < rows; j++) {
      //position of the start of the rectangle is to take each position in the column and row and then mutiply it by the size of the rectangle
      int x = i*gridScale;
      int y = j*gridScale;
  
    //  noStroke();
      pushMatrix();
      translate(x,y);
      fill(255);
      rect(0,0,gridScale,gridScale);
     // randomScale = random(0,80);
     // rect(0,0,gridScale-randomScale,gridScale-randomScale);
      //image(img,x,y,gridScale+mouseX,gridScale+mouseY);
      popMatrix();
    }
  }
  
 //noLoop(); cos it repeats
  
}


//pull the colour from the image and put it into the grid we are on
     // int loc = x + y*width;           // Pixel array location in the array
     // color c = img.pixels[loc];       // Grab the color from the pixel
     //fill (c);
     //rect(x,y,gridScale,gridScale);


void drawGrid(){
  
}



void keyPressed(){
 if (key==' '){
   randomScale = random(0,80);
 }
 else
 if(key=='s'){
   saveFrame("mypic-###.jpg");
 }
  
}