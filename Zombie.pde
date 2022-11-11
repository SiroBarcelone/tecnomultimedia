class zombie {
  boolean vidaZombie=true;
  PVector zombi;
  float Xposin;
  float Yposin;
  float zvel;
  float newX, newY;
  int ztam=20;
  zombie(float Xposin, float Yposin) {
    zvel=0.1;
    zombi = new PVector(Xposin, Yposin, 0.);
    if (vidaZombie==false) {
      println("Zombie muerto");
    }
  }


  void dibujarZombie() {
    pushMatrix();
    float angle = atan2(personaje.Ypos-zombi.y, personaje.Xpos-zombi.x); 
    translate(newX, newY);
    rotate(angle);
    fill(0, 230, 80);
    noStroke();
    rect(Xposin, Yposin, ztam, ztam);
    newX = cos(angle) * zvel + zombi.x;
    newY = sin(angle) * zvel + zombi.y;
    zombi.set(Xposin+newX, Yposin+newY, 0.);
    popMatrix();
  }

  //void zombieMuerte() {
  // if (mousePressed) {
  // if (dist(mouseX, mouseY, Xposin+zombie.newX, Yposin+zombie.newY)>Xposin+zombie.newX-zombie.ztam/2 && dist(mouseX, mouseY, Xposin+zombie.newX, Yposin+zombie.newY)<Xposin+zombie.newX+zombie.ztam/2
  // && dist(mouseX, mouseY, Xposin+zombie.newX, Yposin+zombie.newY)>Yposin+zombie.newY-zombie.ztam/2 && dist(mouseX, mouseY, Xposin+zombie.newX, Yposin+zombie.newY)<Yposin+zombie.newY-zombie.ztam/2) {
  // zombie.vidaZombie=false;
  //}
  //}
  //}
}
