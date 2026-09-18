public class Kreis{
  int xKoordinate;
  int yKoordinate;
  int randomNumber;
  int vorherNumber = 1;
  int radius;

  
  Kreis(int radius){
    this.radius = radius;
    positioniereKreis();
  }
  
  void positioniereKreis() {
    xKoordinate = 13;
    yKoordinate = 13;
  }
  
  void zeichne(int feldGroesse) {
    fill(255,0,0);
    ellipse(feldGroesse * xKoordinate + (feldGroesse / 2), 
    yKoordinate * feldGroesse + (feldGroesse / 2), 
    radius * 2, radius * 2);
    fill(255,255,255);
  }
  
  void bewege(int spielfeldGroesse) {
    randomNumber = int(random(4)) + 1;
    
    // TO-DO Abfrage in while loop damit er nicht stehen bleibt
    if (randomNumber == 1 && vorherNumber != 2){
      if (xKoordinate > spielfeldGroesse - 1){
        xKoordinate = 1;
      } else {
        xKoordinate++; // nach rechts
      }
      vorherNumber = 1;
    } else if (randomNumber ==2 && vorherNumber != 1){
      if (xKoordinate < 1){
        xKoordinate = spielfeldGroesse - 1;
      } else {
        xKoordinate--; // nach links
      }
      vorherNumber = 2;
    } else if (randomNumber == 3 && vorherNumber != 4){
      if (yKoordinate > spielfeldGroesse - 1){
        yKoordinate = 1;
      } else {
        yKoordinate++; // nach unten
      }
      vorherNumber = 3;
    }else if (randomNumber == 4 && vorherNumber != 3){
      if (yKoordinate < 1){
        yKoordinate = spielfeldGroesse - 1;
      } else {
        yKoordinate--; // nach oben
      }
      vorherNumber = 4;
    }
  }
  
  int positionX(){
    return xKoordinate;
  }
  
  int positionY(){
    return yKoordinate;
  }
}
