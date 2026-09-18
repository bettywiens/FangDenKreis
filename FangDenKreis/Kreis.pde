public class Kreis{
  float xKoordinate;
  float yKoordinate;
  float linkeGrenze;
  float rechteGrenze;
  float obereGrenze;
  float untereGrenze;
  float groesse;
  float radius;
  
  Kreis(){
    //radius = groesse / 2;
    //setzeGrenzen();
  }
  
  void setzeGrenzen(){
    linkeGrenze = xKoordinate - radius;
    rechteGrenze = xKoordinate + radius;
    obereGrenze = yKoordinate - radius;
    untereGrenze = yKoordinate + radius;
  }
  
 void zeichne(){
  ellipse(kreis.xKoordinate, kreis.yKoordinate, kreis.groesse, kreis.groesse); // x,y,width,height
 }
}
