class zombie {
  PVector zombi;
  int zYpos;
  int zXpos;
  float zvel = 0.5;
  zombie(int zXpostemp, int zYpostemp, float zveltemp) {
    zYpos=zYpostemp;
    zXpos=zXpostemp;
    zvel=zveltemp;
    zombi = new PVector(random(width), random(height), 0.);
  }

  void moverZombie() {
  }

  void dibujarZombie() {
    pushMatrix();
    float angle = atan2(Personaje.Ypos-zombi.y, Personaje.Xpos-zombi.x);
    translate(zombi.x, zombi.y);
    rotate(angle);
    fill(0, 230, 80);
    rect(0, 0, 20, 20);
    //float angle2 = atan2(Personaje.Ypos, Personaje.Xpos);
    float newX = cos(angle) * zvel + zombi.x;
    float newY = sin(angle) * zvel + zombi.y;
    zombi.set(newX, newY, 0.);
    popMatrix();
  }
}
