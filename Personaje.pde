class Personaje {
  float Xpos;
  float Ypos;
  int rotacion;
  int tam=20;
  int angulo;
  int count;
  boolean vida=true;
  boolean herido;
  float apuntar;
  float pvel;
  PImage personajeherido;
  PImage personaje;
  int countMov = 0;
  String disparo="disparo.wav";


  Personaje(float Xpostemp, float Ypostemp) {
    Ypos=Ypostemp;
    Xpos=Xpostemp;
    personaje=loadImage("personaje.png");
    personajeherido=loadImage("personajeherido.png");
    personajeherido.resize(tam*2, tam*2);
  }

  void dibujarMira() {
    fill(200, 0, 0, 120);
    stroke(255, 0, 0, 120);
    line(Xpos, Ypos, mouseX, mouseY);
    ellipse(mouseX, mouseY, 4, 4);
  }

  void dibujarPersonaje() {
    imageMode(CENTER);
    pushMatrix();
    rectMode(CENTER);
    fill(0, 200, 200, 0);
    noStroke();
    float a = atan2(mouseY-Ypos, mouseX-Xpos);
    translate(Xpos, Ypos);
    rotate(a);
    rect(0, 0, tam, tam);
    personaje.resize(tam*2, tam*2);
    rotate(1.6);
    if (vida==true) {
      pvel=2;
      image(personaje, 0, 0);
    }

    if (herido==true) {
      image(personajeherido, 0, 0);
      pvel=0.8;
    }

    popMatrix();

    if (mousePressed && playing==false) {
      player = minim.loadFile(disparo);
      player.play();
      playing = true;
    } else if (mouseX >= 250 && playing == true) {
    player.pause();
    playing = false;
  }
  }

  void moverPersonaje() {
    if (keyPressed && (key==CODED)) {

      if (keyCode==UP) {
        Ypos-=pvel;
      }
      if (keyCode==DOWN) {
        Ypos+=pvel;
      }
      if (keyCode==LEFT) {
        Xpos-=pvel;
      }
      if (keyCode==RIGHT) {
        Xpos+=pvel;
      }
    }
  }
}
