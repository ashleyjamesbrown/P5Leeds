//p5leeds week3
//ashley james brown oct 2015

String[] lines;
int index = 0;


void setup() {
  size(800, 600);
  background(0);

  frameRate(12); //the speed of reading the file
  lines = loadStrings("positions.txt");
}


void draw() {

  if (index < lines.length) {
    
    String[] pieces = split(lines[index], ','); // '\t'  for tab delimited
    
    if (pieces.length == 2) { // make sure only 2 items in each line
      //read the data
      int firstValue = int(pieces[0]) * 2;  //(0 is the first item in the array)
      int secondValue = int(pieces[1]) * 2; // (1 is teh second item in teh array)
      
      fill(255);
      noStroke();
      ellipse(firstValue, secondValue, 10, 10);
      //using the data and having it as positional coordinates for the ellipse.
      //why not try using it inside of the size of the ellipse or even colour or alpha of the fill
      
    } //if not then skip the line

    index = index + 1;
  } 
  else
  {
    //finished then start again
    background(0); 
    index = 0;
  }
}