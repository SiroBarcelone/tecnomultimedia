juego juego;

void setup() {
  size(800, 600);
  juego = new juego();
}

void draw() {
  background(0);
  juego.dibujarJuego();
  juego.ejecutarJuego();
  keyPressed();
}

void keyPressed() {
}
