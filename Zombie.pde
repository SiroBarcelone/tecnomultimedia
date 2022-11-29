class Zombie {
  float Xposin;
  float Yposin;
  float zvel;
  int ztam;
  int countermuerte;
  boolean vidazombie=true;
  boolean posinicial=true;
  PImage[] mov = new PImage[2];
  PImage zombiemuerto;
  int countanimacion;
  float tiempo;
  float poscounter;
  float distZombie;

  Zombie(float _zvel) {
    ztam=10;
    tiempo=millis();
    poscounter=second();
    zombiemuerto = loadImage("zombimuerto.png");
    mov[0] = loadImage("Zombi1.png");
    mov[1] = loadImage("zombi2.png");
    //ubicacion();
    zvel=_zvel;
  }

  void ubicacion() {
    if (posinicial==true) {
      poscounter++;
      println("posinicial");
      Yposin=random(-800, -40);
      if (Yposin<-30) {
        Xposin=random(0+ztam/2, width-ztam/2);
      }
      if (posinicial==true && poscounter>100) {
        posinicial=false;
      }
    } else if (posinicial==false) {
      println("arrancoo");
      poscounter=0;
      Yposin+=zvel;
    }
  }

  void dibujarZombie() {
    ubicacion();
    puntos();
    if (vidazombie==true) {
      countermuerte=0;
      fill(0, 230, 80, 0);
      noStroke();
      rect(Xposin, Yposin, ztam, ztam);
      tiempo++;
      if (tiempo % 10 == 0) {
        countanimacion+=1;
        if (countanimacion > 1) {
          countanimacion = 0;
        }
      }
      if (Yposin>height+ztam) {
        posinicial=true;
      }
      image(mov[countanimacion], Xposin, Yposin);
    } else if (vidazombie==false) {
      countermuerte++;
      zvel=0;
      image(zombiemuerto, Xposin, Yposin);
      println("muerto");
      if (countermuerte>100) {
        posinicial=true;
        vidazombie=true;
      }
    }
  }

  void puntos() {
    //Matar zombies
    distZombie=dist(mouseX, mouseY, Xposin, Yposin);
    if (distZombie < ztam*2 && mousePressed) {
      vidazombie=false;
    } 
  }
}
