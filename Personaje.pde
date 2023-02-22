class Personaje {
  float Xpos;
  float Ypos;
  int rotacion;
  int tam=20;
  int angulo;
  int count;
  boolean vida=true;
  boolean herido=false;
  boolean inmunidad=false;
  float apuntar;
  float pvel;
  PImage personajeherido;
  PImage personaje;
  PImage sangre;
  int countMov = 0;
  int countInmunidad=100;
  float contadordisparo=0;
  String disparo="disparo.wav";

  Personaje(float Xpostemp, float Ypostemp) {
    Ypos=Ypostemp;
    Xpos=Xpostemp;
    personaje=loadImage("personaje.png");
    personajeherido=loadImage("personajeherido.png");
  }

  void dibujar() {
    dibujarMira();
    dibujarPersonaje();
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
      countInmunidad=100;
      pvel=4;
      image(personaje, 0, 0, 40, 40);
    }

    if (herido==true) {
      image(personajeherido, 0, 0, 40, 40);
      pvel=1.5;
      inmunidad=true;
      if (inmunidad==true) {
        countInmunidad--;
        println("inmunidad");
        if (countInmunidad<1) {
          countInmunidad=0;
          inmunidad=false;
          println("vulnerable");
        }
        if (countInmunidad>100) {
          countInmunidad=100;
          inmunidad=false;
          println("vulnerable");
        }
      }
    }


    popMatrix();
  }

  void moverPersonaje() {
    if (keyPressed) {

      if (key=='w'| key=='W') {
        Ypos-=pvel;
      }
      if (key=='s'| key=='S') {
        Ypos+=pvel;
      }
      if (key=='a'| key=='A') {
        Xpos-=pvel;
      }
      if (key=='d'| key=='D') {
        Xpos+=pvel;
      }
    }
  }
}
