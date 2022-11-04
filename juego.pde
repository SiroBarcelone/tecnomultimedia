Personaje Personaje;
zombie zombie;

class juego {
  zombie [] zombi= new zombie[120];

  juego() {
    Personaje=new Personaje(width/2, height/2);
    zombie=new zombie(int(random(0, width)), int(random(0, height)), 0.5);
    for (int i=0; i<zombi.length; i++) {
      zombi[i] = new zombie(int(random(0, width)), int(random(0, height)), 0.5);
    }
  }

  void ejecutarJuego() {
    Personaje.moverPersonaje();
    Personaje.mira();
  }

  void dibujarJuego() {
    Personaje.dibujarPersonaje();
    Personaje.dibujarMira();
      for (int i=0; i<zombi.length; i++) {
        zombi[i].dibujarZombie();
        zombi[i].moverZombie();
      }
  }
}
