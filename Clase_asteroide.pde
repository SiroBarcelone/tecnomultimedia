class Ast {

  PImage img1;
  float ay, ax, atam, avel;
  Ast() {
    atam = random(10, 100);
    ax = random(0, width);
    ay = random(0, 250);
    avel = random(1, 3);
    img1 = loadImage("asteroide.png");
  }

  void dibujarAsteroide() {
    fill(255);
    ellipse(ax, ay, atam, atam);
    imageMode(CENTER);
    image(img1, ax, ay, atam*2, atam*2);
  }



  void movAsteroide() {
    ay+=avel;
    if (ay>height+atam) {
      ax=random(0, width);
      atam = random(10, 100);
      ay=-100;
      avel = random(3, 10);
    }
  }
}
