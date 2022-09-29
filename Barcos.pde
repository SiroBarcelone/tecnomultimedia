class barco {
  color vela;
  color cuerpo;
  float Xpos;
  float Ypos;
  float speed;

  barco(color tempVela, color tempCuerpo, float tempXpos, float tempYpos, float tempSpeed) {
    vela=tempVela;
    cuerpo=tempCuerpo;
    Xpos=tempXpos;
    Ypos=tempYpos;
    speed=tempSpeed;
  }

  void dibujarBarco() {
    for (int i=0; i<100; i++) {
      noStroke();
      fill(255, 4);
      //ellipse(Xpos-20, Ypos, 50, 20);
      ellipse(Xpos-i, Ypos, 30+i, 27);
    }
    noStroke();
    fill(cuerpo);
    ellipse(Xpos, Ypos, 60, 20);
    rect(Xpos, Ypos-10, -30, 20);
    fill(vela);
    rect(Xpos, Ypos-30, -15, 55);
    fill(vela+cuerpo);
    triangle(Xpos, Ypos-5, Xpos-5, Ypos-10, Xpos-20, Ypos+random(0, 6));
  }

  void moverBarco() {
    Xpos+=speed; 
    Ypos+=random(-1, 1);
    if (Xpos>width) {
      Xpos=0+speed;
    }
    if (Ypos>height) {
      Xpos=0+speed;
    }
  }
}
