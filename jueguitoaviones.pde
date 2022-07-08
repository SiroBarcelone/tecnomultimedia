int mov;

void setup() {
  size(800, 600);
}

void draw() {
  mov+=6;
  background(0, 80, 200);
  fondo();
  avion(30);
  enemigo(posin);
}

void keyPressed() {
  moverAvion();
}

void mousePressed(){
  disparar();
}
