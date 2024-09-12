import ddf.minim.*;
Minim minim;
AudioPlayer player;
AudioPlayer botones;
Aventura aventura;

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
