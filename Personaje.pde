class Personaje {
  float Xpos;
  float Ypos;
  int rotacion;
  int tam=20;
  int angulo;
  int count;
  boolean vida=true;
  boolean herido=false;
  float apuntar;
  float pvel;
  PImage personajeherido;
  PImage personaje;
  PImage sangre;
  int countMov = 0;
  int countInmunidad;
  float contadordisparo=0;
  String disparo="disparo.wav";
 // Audioplayer shoot;

  Personaje(float Xpostemp, float Ypostemp) {
    countInmunidad=second();
    Ypos=Ypostemp;
    Xpos=Xpostemp;
    personaje=loadImage("personaje.png");
    personajeherido=loadImage("personajeherido.png");
    sangre=loadImage("herido.png");
    // shoot = minim.loadFile(disparo);
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
      pvel=3;
      image(personaje, 0, 0, 40, 40);
      countInmunidad=0;
    }

    if (herido==true) {
      image(personajeherido, 0, 0, 40, 40);
      pvel=0.8;
      countInmunidad++;
    }

    popMatrix();

    if (herido==true) {
      image(sangre, width, height/2);
    }

    if (mousePressed==true && playing==false) {
      //player.play();
      //playing = true;
      contadordisparo++;
      if (contadordisparo==2) {
        //playing=false;
        //player.pause();
        //contadordisparo=0;
        mousePressed=false;
      }
    }
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
