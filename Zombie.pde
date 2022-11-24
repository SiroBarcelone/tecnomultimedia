class Zombie {
  float Xposin;
  float Yposin;
  float zvel;
  int ztam=20;
  int countermuerte;
  boolean vidazombie=true;
  PImage[] mov = new PImage[10];
  PImage zombiemuerto;
  int countanimacion;
  float tiempo;

  Zombie() {
    tiempo=millis();
    zombiemuerto = loadImage("zombimuerto.png");
    mov[0] = loadImage("Zombi1.png");
    mov[1] = loadImage("zombi2.png");
  }

  void ubicacion() {
    zvel=0.5;
    //Yposin=random(-800, -40);
    Yposin=200;
    Yposin+=zvel;
    if (Yposin<-40) {
      Xposin=random(0+ztam/2, width-ztam/2);
    }
    if (Yposin>height+ztam) {
      Yposin=random(-800, -25);
    }
  }

  void dibujarZombie() {

    if (vidazombie==true) {
      ubicacion();
      countermuerte=0;
      fill(0, 230, 80, 0);
      noStroke();
      Yposin+=zvel;
      rect(Xposin, Yposin, ztam, ztam);

      tiempo++;
      if (tiempo % 20 == 0) {
        countanimacion+=1;
        if (countanimacion > 1) {
          countanimacion = 0;
        }
      }
      image(mov[countanimacion], Xposin, Yposin);
    } else if (vidazombie==false) {
      countermuerte++;
      image(zombiemuerto, Xposin, Yposin);
      println("muerto");
      if (countermuerte>800) {
        Yposin=random(-800, -25);
        vidazombie=true;
      }
    }
  }
}
//}
