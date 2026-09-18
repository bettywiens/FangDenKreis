float beginnX = 20.0;  // Beginnende x Koordinate ## wird zurückgesetzt
float beginnY = 10.0;  // Beginnende y Koordinate ##  wird zurückgesetzt
float endeX = 570.0;   // Ende x Koordinate wird zur beginnenden x koordinate ## wird neu bestimmt NICHT zurückgesetzt
float endeY = 320.0;   // Ende x Koordinate wird zur beginnenden x koordinate ## wird neu bestimmt NICHT zurückgesetzt
float distanzX;          // X-axis distanz die sich bewegt wird ## wird neu bestimmt NICHT zurückgesetzt
float distanzY;          // Y-axis distanz die sich bewegt wird ## wird neu bestimmt NICHT zurückgesetzt
float exponent = 2;   // Legt die Stärke der Kurve fest ## bleibt gleich
float kreisX = 0.0;        // Momentane x-coordinate ## startet wo es aufgehört hat
float kreisY = 0.0;        // Momentane y-coordinate ## startet wo es aufgehört hat
float schritt = 0.01;    // Größe von jedem Schritt auf dem Weg ## bleubt gleich
float prozent = 0.0;      // Perzent des gesamten Weges ## wird zurückgesetzt
double letzterZeitpunkt = 0;
double intervall = 10;
float minimaleDistanzX = 320;
float minimaleDistanzY = 180;

void setup() {
  size(640, 360);
  //noStroke();
  distanzX = endeX - beginnX; // initialisierung distanz
  distanzY = endeY - beginnY;
}

void draw() {
  fill(0,30); // Farbe Hintergrund
  
  
  rect(0, 0, width, height);
  prozent += schritt; //prozent des zurückgelegten weges steigt mit jedem schrit
  if (prozent < 1.0) { // prozent unter 100% dann wird der momentane punkt gezeichnet
    kreisX = beginnX + (prozent * distanzX); // be
    kreisY = beginnY + (pow(prozent, exponent) * distanzY);
  } else {
    prozent = 0.0;
    setzeWerte(endeX, endeY);
  }
  fill(255,255,0); // Farbe punkt
  ellipse(kreisX, kreisY, 30, 30); // x,y,width,height  
}


void setzeWerte(float letzteX, float letzteY){
  int counter;
  beginnX = letzteX;
  beginnY = letzteY;
  println(beginnX);
  println(beginnY);
  
  do {
    endeX = random(640);
    endeY = random(360);
    distanzX = endeX - beginnX;
    distanzY = endeY - beginnY;    
    if (Math.abs(distanzX) < minimaleDistanzX && Math.abs(distanzY) < minimaleDistanzY){
      println(distanzX);
      counter = 1;
    } else {
      counter = 2;
    }        
  } while (counter == 1); // wird solange berechnet, bis der abstand groß genug ist
}
