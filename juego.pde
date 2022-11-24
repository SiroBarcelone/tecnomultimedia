class Juego {
  Personaje personaje;
  Zombie zombie;
  Comida comida;
  boolean ganaste;
  boolean perdiste;
  boolean game;
  PImage victoria;
  PImage fondo;
  Zombie [] zombies = new Zombie[1];

  Juego() {
    victoria=loadImage("imagenvictoria.jpg");
    ganaste=false;
    perdiste=false;
    game=true;
    fondo=loadImage("fondojuego.png");
    personaje=new Personaje(width/2, height/2);
    comida=new Comida();
    for (int i=0; i<zombies.length; i++) {
      zombies[i] = new Zombie();
    }
  }

  void ejecutarJuego() {
  }

  void dibujarJuego() {
    if (game==true) {
      image(fondo, width/2, height/2);
      for (int i=0; i<zombies.length; i++) {
        zombies[i].dibujarZombie();
        zombies[i].ubicacion();
      }
      personaje.dibujar();
      personaje.moverPersonaje();
      comida.dibujarComida();
      //zombie.ubicacion();
    }
    if (ganaste==true) {
      game=false;
      image(victoria, width/2, height/2);
      textSize(20);
      fill(20, 200, 10);
      text("Conseguiste la comida necesaria", width/2, 500);
    }
  }

  void Puntos() {
    //Matar zombies
    if (dist(mouseX, mouseY, zombie.Xposin, zombie.Yposin) < zombie.ztam-2 && mousePressed) {
      zombie.vidazombie=false;
    }

    //Puntos de comida
    if (dist(comida.CXpos, comida.CYpos, personaje.Xpos, personaje.Ypos) < comida.Ctam) {
      comida.comer=true;
    }

    if (comida.comer==true) {
      comida.CYpos=random(height);
      comida.CXpos=random(width);
      comida.contador+=1;
      comida.tiempo++;
      println("agarrado");
      if (personaje.herido==true) {
        personaje.herido=false;
        personaje.vida=true;
      }
      if (comida.tiempo>0.5) {
        comida.comer=false;
      }
    }
  }

  void colisionZombie() {
    //Personaje herido y muerte
    if (personaje.vida==true && zombie.vidazombie==true) {
      if (dist(personaje.Xpos, personaje.Ypos, zombie.Xposin, zombie.Yposin) <personaje.tam ) {
        println("HERIDO1");
        int countrec=0;
        countrec++;
        fill(255, 0, 0, 240);
        rect(width/2, height/2, width, height);
        personaje.herido=true;
        personaje.vida=false;
      }
    }
  }
}
