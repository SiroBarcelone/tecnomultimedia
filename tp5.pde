import ddf.minim.*;
Minim minim;
AudioPlayer player;
Pantallas pantallas;
boolean playing=false;
Juego juego;

void setup() {
  size(800, 600);
  minim = new Minim (this);
  pantallas= new Pantallas();
  //juego=new Juego();
}


void draw() {
  background(0);
  pantallas.dibujarPantallas();
  //juego.dibujarJuego();
  
}

void mousePressed() {
  pantallas.mousePressed();
}
