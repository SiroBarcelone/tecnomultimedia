class Mira {
  float miraX, miraY;
  Mira() {
  }

  void dibujarMira() {
    pushMatrix();
    miraX=mouseX;
    miraY=mouseY;
    stroke(255);
    line(miraX, miraY, zombie.newX, zombie.newY);
    noStroke();
    noFill();
    fill(200, 0, 0, 120);
    stroke(255, 0, 0, 120);
    line(personaje.Xpos, personaje.Ypos, miraX, miraY);
    ellipse(miraX, miraY, 6, 6);
    popMatrix();
  }

  void disparar() {
  }
}
