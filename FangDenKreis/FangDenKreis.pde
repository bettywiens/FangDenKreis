int spielfeldGroesse = 30;
int dimension = 2;
int feldGroesse;
double letzterZeitpunkt = 0;
double intervall = 500;
Kreis kreis;
int radius = 30;
int koordinateXInPixel;
int koordinateYInPixel;
boolean kreisWurdeGeklickt;
int punkte;
int textPosition = 20;

int[][] spielfeld;
int[] kreisPosition;

// TO-DO: Wenn mans anklickt hat hat man gewonnen
// Feld eigentlich nicht notwendig

void setup(){
  size(600,600);
  rectMode(CENTER);
  punkte = 0;
  feldGroesse = width / spielfeldGroesse;
  spielfeld = new int[spielfeldGroesse][spielfeldGroesse];
  kreisPosition = new int[dimension];
  kreis = new Kreis(radius);  
  kreisPosition[0] = kreis.xKoordinate;
  kreisPosition[1] = kreis.yKoordinate;
  koordinateXInPixel = feldGroesse * kreis.xKoordinate + (feldGroesse / 2);
  koordinateYInPixel = kreis.yKoordinate * feldGroesse + (feldGroesse / 2);
  kreisWurdeGeklickt = false;
}

void draw(){
  background(0);
  if(kreisWurdeGeklickt){
    println("geklickt");
    punkte++;
    restart();
  }
  if(millis() - letzterZeitpunkt >= intervall){
    kreis.bewege(spielfeldGroesse);
    letzterZeitpunkt = millis();
  }
  text("Punkte: " + punkte, textPosition, textPosition);
  kreis.zeichne(feldGroesse);
}

void restart(){
  feldGroesse = width / spielfeldGroesse;
  spielfeld = new int[spielfeldGroesse][spielfeldGroesse];
  kreisPosition = new int[dimension];
  kreis = new Kreis(radius);  
  kreisPosition[0] = kreis.xKoordinate;
  kreisPosition[1] = kreis.yKoordinate;
  koordinateXInPixel = feldGroesse * kreis.xKoordinate + (feldGroesse / 2);
  koordinateYInPixel = kreis.yKoordinate * feldGroesse + (feldGroesse / 2);
  kreisWurdeGeklickt = false;
}

void mousePressed(){
  if (mouseX > (koordinateXInPixel - radius) && mouseX < (koordinateXInPixel + radius) && 
  mouseY > (koordinateYInPixel - radius) && mouseY < (koordinateYInPixel + radius)){
    println("pressed");
    kreisWurdeGeklickt = true;
  }
}
