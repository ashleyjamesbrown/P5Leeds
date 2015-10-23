//shapes are delcared as type PShape
//created using a variety of methods
//diusplayed using the shape(shapebvariable,cooridnates);
//eg. shape(square,x,y);
//or shape(square,x,y,width,height);
//shapeMode(CENTER) specifies that x,y are the center coordinates


PShape square;

void myShape(){
  square = createShape(RECT, 0, 0, 50, 50); //using predfined shape type SQUARE
  //other types
  //POINT, LINE, TRIANGLE, QUAD, RECT, ELLIPSE, ARC
  //same variables as when calling originally
}



PShape s;

void myCustomShape(){
  
  s = createShape(); //no type so its freeform
  s.beginShape();
  
  s.fill(0, 0, 255); 
  s.noStroke();    
  
  s.vertex(0, 0);
  s.vertex(0, 50);
  s.vertex(50, 50);
  s.vertex(50, 0);
  
  s.endShape(CLOSE);
  
}


PShape myImport;

void myImportedShape(){
 myImport = loadShape("bot.svg"); //this can be.svg or .obj and must be in the directory folder
}