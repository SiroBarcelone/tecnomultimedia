import ddf.minim.*;
Minim minim;
AudioPlayer player;
boolean playing=false;


juego juego;


void setup() {
  size(800, 600);
  minim = new Minim (this);
  juego = new juego();
  juego.ejecutarJuego();
  player = minim.loadFile (Personaje.disparo);



  noCursor();
}

void draw() {
  background(0);
  juego.dibujarJuego();
  keyPressed();
}

void mouseClicked() {
  juego.controlesJuego();
}
