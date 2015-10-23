void drawMany(){
  for (int i=0; i<255; i++) {
    
    noStroke();
    //fill(0,0,255,i);
    fill(random(0,255),random(0,255),random(0,255),i);
   // ellipse(width/2,i,50,50);
   // ellipse(random(0,width),i*10,15,15);
    ellipse(random(0,width),i+150,50,50);
    //rect
   // stroke(random(0,255),random(0,255),random(0,255),i);
   // line(random(0,width),i+200,50,50);
    
  }
  
}