//float beginX;
//float beginY;  
//float endX;   
//float endY;   
//float distX;          
//float distY;          
//float exponent;   
//float x;        
//float y;        
//float step;    
//float pct;      
//double intervall = 5000;
//double vorherZeit = 0;
//float randomX;
//float randomY;
//int counter = 1;
//float[] koordinaten;

//void setup() {
//  size(640, 360);
//  noStroke();
//  randomX = random(640);
//  randomY = random(360);
//  pct = 0.0;
//  beginX = x;
//  beginY = y;
//  endX = randomX;
//  endY = randomY;
//  distX = endX - beginX;
//  distY = endY - beginY;
//  beginX = 20.0;  
//  beginY = 10.0;
//  endX = 570.0;   
//  endY = 320.0;
//  exponent = 4; 
//  step = 0.01;
//  koordinaten = new float[2];
//  koordinaten[0] = x;
//  koordinaten[1] = y;
  
//}

//void draw() {      
//  koordinaten = move();
//  float startx = koordinaten[0];
//  float starty = koordinaten[1];
//  if(millis() - vorherZeit >= intervall){    
//    reset(startx, starty);
//  }
//}

//float[] move(){
//  float[] koordinaten = new float[2];
//  fill(0, 2);
//  rect(0, 0, width, height);
//  pct += step;
//  if (pct < 1.0) {
//    x = beginX + (pct * distX);
//    y = beginY + (pow(pct, exponent) * distY);
//    koordinaten[0] = x;
//    koordinaten[1] = y;
//    text(x, 200, 200);
//    text(y, 250, 250);
//  }
//  fill(255);
//  ellipse(x, y, 20, 20);
//  return koordinaten; 
//}


//void reset(float startx, float starty) {
//  randomX = random(640);
//  randomY = random(360);
//  pct = 0.0;
//  beginX = startx;
//  beginY = starty;
//  endX = randomX;
//  endY = randomY;
//  distX = endX - beginX;
//  distY = endY - beginY;
//  beginX = 20.0;  
//  beginY = 10.0;
//  endX = 570.0;   
//  endY = 320.0;
//  exponent = 4; 
//  step = 0.01;
//}
