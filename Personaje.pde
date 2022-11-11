class Personaje {
  float Xpos;
  float Ypos;
  int rotacion;
  int tam=20;
  float i=0;
  int angulo;
  int longitud;
  int count;
  float apuntar;
  Personaje(float Xpostemp, float Ypostemp) {
    Ypos=Ypostemp;
    Xpos=Xpostemp;
  }


  void dibujarPersonaje() {
    rectMode(CENTER);
    fill(0, 200, 200);    
    pushMatrix();
    float a = atan2(mouseY-height/2, mouseX-width/2);
    translate(Xpos, Ypos);
    rotate(a);
    rect(0, 0, tam, tam);
    popMatrix();
  }

  void moverPersonaje() {
    if (keyPressed && (key==CODED)) {
      if (keyCode==UP) {
        Ypos-=2;
      }
      if (keyCode==DOWN) {
        Ypos+=2;
      }
      if (keyCode==LEFT) {
        Xpos-=2;
      }
      if (keyCode==RIGHT) {
        Xpos+=2;
      }
    }
  }

  void disparar() {
    //if (dist(mouseX, mouseY, zombie.Xposin, zombie.Yposin)) {
    //if (dist(mouseX, mouseY, width/2, height/2)<zombie.ztam) {
  }
  // }


  void contador() {
    fill(255, 0, 0);
    text("zombies asesinados:"+count, 10, 20);
    if (zombie.vidaZombie==false) {    
      count+=1;
    }
  }
}
