import ddf.minim.*;
Minim minim;
AudioPlayer player;
Pantallas pantallas;
boolean playing=false;

void setup() {
  size(800, 600);
  minim = new Minim (this);
  pantallas= new Pantallas();
}

void draw() {
  background(0);
  pantallas.dibujarPantallas();
}

void mousePressed() {
  pantallas.mousePressed();
}
