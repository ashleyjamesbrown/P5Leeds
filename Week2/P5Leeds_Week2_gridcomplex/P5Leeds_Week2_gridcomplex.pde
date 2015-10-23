//grid drawing

// Grid layout based on columns (xAxis) & rows (yAxis)
int numCol, numRows; 

// Grid resolution = number of repetitions
float gridResX;
float gridResY;


void setup(){
  size(800,600);
  background(0);

  numCol = 10;
  numRows = 10;

  gridResX = 40;
  gridResY = 40;
  //gridResY = gridResX; // Uniform resolution

}



void draw(){

  background(0);
  translate(width/2, height/2); // center everything
  
 // numRows = constrain(numRows, 1, 100);
 // numCol = constrain(numCol, 1, 100);
  
   // These make sure everything is centered
  float centerX = gridResX * (numCol-1) / 2;
  float centerY = gridResY * (numRows-1) / 2;
  
  for (int gridY = 0; gridY<numRows; gridY++) {
    for (int gridX = 0; gridX<numCol; gridX++) {
      // Here is our little calculation for x & y postiions
      // based on our grid resolution variables and offset calculations
     
      float posX =  gridX * gridResX - centerX;
      float posY =  gridY * gridResY - centerY;
  
      pushMatrix();
      translate(posX, posY);
      fill(255);
      rect(0,0,gridResX,gridResY);
      popMatrix();
    }
  }
  
  
  
  
  
}