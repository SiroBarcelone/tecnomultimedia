class Personaje {
  float Xpos;
  float Ypos;
  int rotacion;
  float i=0;
  int angulo;
  int longitud;
  int count;
  //int [] [] centro = {{Xpos, Ypos}};



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
    noStroke();
    ellipse(mouseX, mouseY, 4, 4);
  }

  void calcularAnguloDeMira() {
  }

  void mira() {
    //this.count++;
    pushStyle();
    stroke(255,0,0,50);
    line(this.Xpos, this.Ypos, mouseX, mouseY);
    noFill();
    circle(mouseX, mouseY, 5);
    popStyle();
  }
}
