class Personaje {
  float Xpos;
  float Ypos;
  int rotacion;
  float i=0;
  int angulo;
  int longitud;
  int count;
  int [] [] centro = {{Xpos, Ypos}};



  Personaje(float Xpostemp, float Ypostemp) {
    Ypos=Ypostemp;
    Xpos=Xpostemp;
  }


  void dibujarPersonaje() {
    rectMode(CENTER);
    fill(0, 200, 200);    
    pushMatrix();
    translate(Xpos, Ypos);
    rotate(i);
    rect(0, 0, 20, 20);
    popMatrix();
    i+=mouseX+mouseY;
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
  }

  void dibujarMira() {
    fill(200, 0, 0, 100);
    ellipse(mouseX, mouseY, 5, 5);
  }

  void calcularAnguloDeMira() {
    this.angulo = round(map(atan2(mouseY-this.Ypos, mouseX-this.Xpos), -PI, PI, 0, 360));
    this.longitud = int(dist(this.Xpos, this.Ypos, mouseX, mouseY));
  }

  void mira() {
    this.count++;
    pushStyle();
    line(this.centro[0], this.centro[1],mouseX, mouseY);
    noFill();
    circle(mouseX, mouseY, 5);
    popStyle();
  }
}
