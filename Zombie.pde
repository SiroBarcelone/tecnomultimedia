class zombie {
  float Xposin;
  float Yposin=random(-800, -25);
  float zvel;
  float newX, newY;
  int ztam=20;
  int countermuerte;
  boolean vidazombie=true;
  PImage[] mov = new PImage[10];
  PImage zombiemuerto;
  int countanimacion=0;
  float tiempo;
  zombie() {
    tiempo=millis();
    zombiemuerto = loadImage("zombimuerto.png");
    mov[0] = loadImage("Zombi1.png");
    mov[1] = loadImage("Zombi11.png");
    mov[2] = loadImage("Zombi111.png");
    mov[3] = loadImage("Zombi1111.png");
    mov[4] = loadImage("Zombi11111.png");
    mov[5] = loadImage("zombi2.png");
    mov[6] = loadImage("zombi22.png");
    mov[7] = loadImage("zombi222.png");
    mov[8] = loadImage("zombi2222.png");
    mov[9] = loadImage("zombi22222.png");
    
    zombiemuerto.resize(ztam*2, ztam*2);
    mov[0].resize(ztam*2, ztam*2);
    mov[1].resize(ztam*2, ztam*2);
    mov[2].resize(ztam*2, ztam*2);
    mov[3].resize(ztam*2, ztam*2);
    mov[4].resize(ztam*2, ztam*2);
    mov[5].resize(ztam*2, ztam*2);
    mov[6].resize(ztam*2, ztam*2);
    mov[7].resize(ztam*2, ztam*2);
    mov[8].resize(ztam*2, ztam*2);
    mov[9].resize(ztam*2, ztam*2);
  }


  void dibujarZombie() {
    tiempo++;
    if(tiempo % 10 ==0){
    countanimacion++;
    }
    if (countanimacion == 8) {
      countanimacion = 0;
      countanimacion++;
    }
    zvel=0.5;

    //--------------------------------------Lógica del disparo----------------------------------------------------------------

    if (dist(mouseX, mouseY, Xposin, Yposin) < ztam-2 && mousePressed) {
      vidazombie=false;
    }

    //-----------------------------------------Lógica vida-muerte del zombie-----------------------------------------------

    if (vidazombie==true) {
      countermuerte=0;
      Yposin+=zvel;
      if (Yposin<-20) {
        Xposin=random(0+ztam/2, width-ztam/2);
      }
      fill(0, 230, 80, 0);
      noStroke();
      rect(Xposin, Yposin, ztam, ztam);
      if (Yposin>height+ztam) {
        Yposin=random(-800, -25);
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

    //------------------------------------Lógica de la colisión zombie-personaje y estados del personaje--------------------------------------------------------------------------
    if (dist(Personaje.Xpos, Personaje.Ypos, Xposin, Yposin) < Personaje.tam && Personaje.vida==true && vidazombie==true) {
      println("HERIDO1");
      int countrec=0;
      countrec++;
      fill(255, 0, 0, 240);
      rect(width/2, height/2, width, height);
      Personaje.herido=true;
      Personaje.vida=false;
    }
  }
}
