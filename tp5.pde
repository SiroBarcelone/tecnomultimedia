import ddf.minim.*;
Minim minim;
AudioPlayer player;
boolean playing=false;
Juego juego;


void setup() {
  size(800, 600);
  /*minim = new Minim (this);
   player = minim.loadFile (personaje.disparo);
   */
  juego = new Juego();
  noCursor();
}

void draw() {
  background(0);
  juego.dibujarJuego();
  keyPressed();
}

void mouseClicked() {
}
