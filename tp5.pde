import ddf.minim.*;
Minim minim;
AudioPlayer player;
Aventura aventura;
boolean playing=false;

void setup() {
  size(800, 600);
  minim = new Minim (this);
  aventura = new Aventura();
}


void draw() {
  background(0);
  aventura.dibujarAventura();
}

void mousePressed(){
aventura.mouseClicked();
}
