class Juego {
  Personaje personaje;
  Zombie zombie;
  Comida comida;
  boolean ganaste;
  boolean perdiste;
  boolean game;
  PImage victoria;
  PImage perdida;
  PImage fondo;
  Zombie [] zombies = new Zombie[40];


  Juego() {
    ganaste=false;
    perdiste=false;
    game=false;
    fondo=loadImage("fondojuego.png");
    personaje=new Personaje(width/2, height/2);
    comida=new Comida(width/2, height/2);
    for (int i=0; i<zombies.length; i++) {
      zombies[i] = new Zombie(1);
    }
  }

  void dibujarJuego() {
    if (game==true) {
      colisiones();
      aventura.mostrarPantallas=false;
      noCursor();
      image(fondo, width/2, height/2);
      for (int i=0; i<zombies.length; i++) {
        zombies[i].dibujarZombie();
        zombies[i].ubicacion();
      }
      personaje.dibujar();
      comida.dibujarComida();
      if (personaje.inmunidad==true && personaje.herido==true) {
        fill(255, 182, 23, 150);
        stroke(0);
        strokeWeight(3);
        rect(100, height-60, 350, 80);
        fill(0);
        text("INMUNIDAD: "+personaje.countInmunidad, 40, height-65);
      }
      if (perdiste==true) {
        game=false;
        aventura.mostrarPantallas=true;
        aventura.pantallaNum=11;
        personaje.herido=false;
        personaje.vida=true;
        comida.contador=0;
      } else if (comida.contador>=15) {
        ganaste=true;
      }
      if (ganaste==true) {
        game=false;
        aventura.mostrarPantallas=true;
        aventura.pantallaNum=10;
        personaje.vida=true;
        comida.contador=0;
      }
    }
  }



  void colisiones() {
    if (game==true) {

      if (dist(comida.CXpos, comida.CYpos, personaje.Xpos, personaje.Ypos) < comida.Ctam) {
        comida.comer=true;
      }

      if (comida.comer==true) {
        comida.comidacount=int(random(0, 4));
        comida.CYpos=random(height);
        comida.CXpos=random(width);
        comida.contador+=1;
        comida.tiempo++;
        if (personaje.herido==true) {
          personaje.herido=false;
          personaje.vida=true;
        }
        if (comida.tiempo>0.5) {
          comida.comer=false;
        }
      }

      for (int i=0; i<zombies.length; i++) {
        if (personaje.vida==true && zombies[i].vidazombie==true) {
          if (dist(personaje.Xpos, personaje.Ypos, zombies[i].Xposin, zombies[i].Yposin) <personaje.tam ) {
            fill(255, 0, 0, 240);
            rect(width/2, height/2, width, height);
            personaje.herido=true;
            personaje.vida=false;
          }
        } else if (personaje.herido==true && zombies[i].vidazombie==true) {
          if (dist(personaje.Xpos, personaje.Ypos, zombies[i].Xposin, zombies[i].Yposin) <personaje.tam) {
            if (personaje.inmunidad==false) {
              perdiste=true;
              personaje.herido=false;
              personaje.vida=true;
            }
          } else {
            perdiste=false;
          }
        }
      }
    }
  }

  void keyPressed() {
    personaje.moverPersonaje();
  }
}
