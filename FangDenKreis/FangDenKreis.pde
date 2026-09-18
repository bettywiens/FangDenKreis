Kreis kreis;
float beginnX;
float beginnY;
float endeX;
float endeY;
float distanzX;
float distanzY;
float exponent = 2;
float schritt = 0.01;
float prozent;
double letzterZeitpunkt = 0;
double intervall = 10;
float minimaleDistanzX = 320;
float minimaleDistanzY = 180;
boolean kreisWurdeGeklickt = false;
boolean binÜberKreis = false;
int highscore = 0;


void setup() {
  size(640, 360);
  ellipseMode(CENTER);
  kreis = new Kreis();
  kreis.groesse = 30;
  kreis.radius = kreis.groesse / 2;
  beginnX = random(width);
  beginnY = random(height); 
  setzeWerte(beginnX, beginnY);
}

void draw() {
  fill(0, 30); // Farbe Hintergrund
  rect(0, 0, width, height);
  fill(255);
  text("Punkte: " + highscore, 20, 20);
  kreislaufe();
  kreis.setzeGrenzen();
  fill(255, 255, 0); // Farbe punkt
  kreisgeklickt();
  kreis.zeichne();
}

void kreisgeklickt(){
  if (kreisWurdeGeklickt) {
    fill(255, 0, 0);
    println("juhu");
    kreisWurdeGeklickt = false;
    setzeWerte(random(width), random(height));
    highscore++;
  } 
}

void kreislaufe(){
  prozent += schritt; //prozent des zurückgelegten weges steigt mit jedem schrit
  if (prozent < 1.0) { // prozent unter 100% dann wird der momentane punkt gezeichnet
    kreis.xKoordinate = beginnX + (prozent * distanzX); // be
    kreis.yKoordinate = beginnY + (pow(prozent, exponent) * distanzY);
  } else {
    setzeWerte(endeX, endeY);
  }
}

void setzeWerte(float letzteX, float letzteY) {
  int counter;
  kreis.setzeGrenzen();
  prozent = 0.0;
  beginnX = letzteX;
  beginnY = letzteY;

  do {
    endeX = random(width);
    endeY = random(height);
    distanzX = endeX - beginnX;
    distanzY = endeY - beginnY;
    if (Math.abs(distanzX) < minimaleDistanzX && Math.abs(distanzY) < minimaleDistanzY) {
      counter = 1;
    } else {
      counter = 2;
    }
  } while (counter == 1); // wird solange berechnet, bis der abstand groß genug ist
}



void mousePressed() {
  if (mouseX > kreis.linkeGrenze && mouseX < kreis.rechteGrenze &&
    mouseY < kreis.untereGrenze && mouseY > kreis.obereGrenze) {
    kreisWurdeGeklickt = true;
  }
}

void hover() {
  if (mouseX > kreis.linkeGrenze && mouseX < kreis.rechteGrenze &&
    mouseY < kreis.untereGrenze && mouseY > kreis.obereGrenze) {
    binÜberKreis = true;
  }
}
