Personaje Personaje;
zombie zombie;
Comida comida;


class juego {
  PImage fondo;
  zombie [] zombi= new zombie[80];

  juego() {
    fondo=loadImage("fondojuego.png");
    Personaje=new Personaje(width/2, height/2);
    comida=new Comida();
    zombie=new zombie();
    for (int i=0; i<zombi.length; i++) {
      zombi[i] = new zombie();
    }
  }

  void ejecutarJuego() {
    comida.posicionComida();
    //Personaje.mira();
  }

  void dibujarJuego() {
    image(fondo, width/2, height/2);
    for (int i=0; i<zombi.length; i++) {
      zombi[i].dibujarZombie();
    }
    Personaje.dibujarMira();
    Personaje.moverPersonaje();
    Personaje.dibujarPersonaje();
    comida.dibujarComida();
  }
  void controlesJuego() {
  }
}
