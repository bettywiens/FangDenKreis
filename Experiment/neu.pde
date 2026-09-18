float beginX = 20.0;  // Beginnende x Koordinate ## wird zurückgesetzt
float beginY = 10.0;  // Beginnende y Koordinate ##  wird zurückgesetzt
float endX = 570.0;   // Ende x Koordinate wird zur beginnenden x koordinate ## wird neu bestimmt NICHT zurückgesetzt
float endY = 320.0;   // Ende x Koordinate wird zur beginnenden x koordinate ## wird neu bestimmt NICHT zurückgesetzt
float distX;          // X-axis distanz die sich bewegt wird ## wird neu bestimmt NICHT zurückgesetzt
float distY;          // Y-axis distanz die sich bewegt wird ## wird neu bestimmt NICHT zurückgesetzt
float exponent = 4;   // Legt die Stärke der Kurve fest ## bleibt gleich
float x = 0.0;        // Momentane x-coordinate ## startet wo es aufgehört hat
float y = 0.0;        // Momentane y-coordinate ## startet wo es aufgehört hat
float step = 0.01;    // Größe von jedem Schritt auf dem Weg ## bleubt gleich
float pct = 0.0;      // Perzent des gesamten Weges ## wird zurückgesetzt

void setup() {
  size(640, 360);
  noStroke();
  distX = endX - beginX; // initialisierung distanz
  distY = endY - beginY;
}

void draw() {
  fill(0, 2);
  rect(0, 0, width, height);
  pct += step; //prozent des zurückgelegten weges steigt mit jedem schritt
  if (pct < 1.0) {
    x = beginX + (pct * distX);
    y = beginY + (pow(pct, exponent) * distY);
  }
  fill(255);
  ellipse(x, y, 20, 20);
}

void mousePressed() {
  pct = 0.0;
  beginX = x;
  beginY = y;
  endX = mouseX;
  endY = mouseY;
  distX = endX - beginX;
  distY = endY - beginY;
}
