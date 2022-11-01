Personaje Personaje;
zombie zombie;

class juego {
  juego() {
    Personaje=new Personaje(width/2, height/2);
    zombie=new zombie(width-100, height-100, 40);
  }

  void ejecutarJuego() {
    Personaje.moverPersonaje();
  }

  void dibujarJuego() {
    Personaje.dibujarPersonaje();
    zombie.dibujarZombie();
  }
}
