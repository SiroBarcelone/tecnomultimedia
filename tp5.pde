//https://youtu.be/-sNuuMK7HM0
Juego juego;

void setup() {
  size(800, 600);
  juego = new Juego();
}

void draw() {
  background(0);
  juego.dibujarJuego();
  juego.movimiento();
  juego.colision();
}

void keyPressed() {
  juego.reiniciar();
}

void mousePressed() {
  juego.Iniciar();
}
