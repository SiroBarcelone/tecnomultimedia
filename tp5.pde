import ddf.minim.*;
Minim minim;
AudioPlayer player;
Pantalla pantallas;
AudioPlayer botones;
Aventura aventura;
boolean playing=false;
int loopCounter;
Juego juego;

void setup() {
  size(800, 600);
  minim = new Minim (this);
  player = minim.loadFile("Musicafondo.mp3");
  aventura = new Aventura();
  player.loop(4);
}


void draw() {
  background(0);
  aventura.draw();
}

void mousePressed() {
  aventura.mouseClicked();
}
