class Juego {
  Personaje personaje;
  Zombie zombie;
  Comida comida;
  boolean ganaste;
  boolean perdiste;
  boolean game;
  boolean dibujarJuego;
  PImage victoria;
  PImage perdida;
  PImage fondo;
  int countrec=0;
  Botones reiniciar;
  Zombie [] zombies = new Zombie[40];


  Juego() {
    reiniciar = new Botones(0, 180, width, 30);
    victoria=loadImage("imagenvictoria.jpg");
    perdida=loadImage("imagenperdida.jpg");
    ganaste=false;
    perdiste=false;
    game=false;
    dibujarJuego=false;
    fondo=loadImage("fondojuego.png");
    personaje=new Personaje(width/2, height/2);
    comida=new Comida(width/2, height/2);
    for (int i=0; i<zombies.length; i++) {
      zombies[i] = new Zombie(1);
    }
  }

  void dibujarJuego() {
    if (dibujarJuego==true) {
      if (game==true) {
        colisiones();
        noCursor();
        image(fondo, width/2, height/2);
        for (int i=0; i<zombies.length; i++) {
          zombies[i].dibujarZombie();
          zombies[i].ubicacion();
        }
        personaje.dibujar();
        personaje.moverPersonaje();
        comida.dibujarComida();
      }
      if (ganaste==true) {
        game=false;
        image(victoria, width/2, height/2);
        textSize(20);
        fill(20, 200, 10);
        text("Conseguiste la comida necesaria", width/2-130, 500);
        reiniciar.dibujarBoton(1, "Reiniciar");
      }
      if (perdiste==true) {
        game=false;
        image(perdida, width/2, height/2);
        textSize(20);
        fill(200, 20, 10);
        text("No lograste sobrevivir...", width/2-130, 500);
        reiniciar.dibujarBoton(1, "Reiniciar");
      }
    }
  }

  void mouseClicked() {
    if (reiniciar.presionado==true) {
      perdiste=false;
      ganaste=false;
      aventura.mostrarPantallas=true;
      aventura.pantallaNum=1;
    }
  }

  void colisiones() {
    if (dist(comida.CXpos, comida.CYpos, personaje.Xpos, personaje.Ypos) < comida.Ctam) {
      comida.comer=true;
    }

    if (comida.comer==true) {
      comida.comidacount=int(random(0, 4));
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

    if (comida.contador==20) {
      ganaste=true;
    }

    //Personaje herido y muerte
    for (int i=0; i<zombies.length; i++) {
      if (personaje.vida==true && zombies[i].vidazombie==true) {
        if (dist(personaje.Xpos, personaje.Ypos, zombies[i].Xposin, zombies[i].Yposin) <personaje.tam ) {
          println("HERIDO1");
          countrec++;
          fill(255, 0, 0, 240);
          rect(width/2, height/2, width, height);
          personaje.herido=true;
          personaje.vida=false;
        }
      } else if (personaje.herido==true && zombies[i].vidazombie==true && personaje.countInmunidad>100) {
        if (dist(personaje.Xpos, personaje.Ypos, zombies[i].Xposin, zombies[i].Yposin) <personaje.tam ) {
          perdiste=true;
        }
      }
    }
  }
}
