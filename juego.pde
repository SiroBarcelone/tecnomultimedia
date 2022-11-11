Personaje personaje;
zombie zombie;
Mira mira;

class juego {
  zombie [] zombi1= new zombie[20];
  zombie [] zombi2= new zombie[20];
  zombie [] zombi3= new zombie[20];
  zombie [] zombi4= new zombie[20];

  juego() {
    personaje=new Personaje(width/2, height/2);
    mira=new Mira();
    zombie=new zombie(0, 0);
    for (int i=0; i<zombi1.length; i++) {
      zombi1[i] = new zombie(random(width), random(-200, 0));
    }
    for (int i=0; i<zombi2.length; i++) {
      zombi2[i] = new zombie(random(800, 800+200), random(height));
    }
    for (int i=0; i<zombi3.length; i++) {
      zombi3[i] = new zombie(random(width), random(600, 600+200));
    }
    for (int i=0; i<zombi4.length; i++) {
      zombi4[i] = new zombie(random(-200, 0), random(height));
    }
  }

  void ejecutarJuego() {
    personaje.moverPersonaje();
    //Personaje.mira();
  }

  void dibujarJuego() {
    personaje.dibujarPersonaje();
    for (int i=0; i<zombi1.length; i++) {
      zombi1[i].dibujarZombie();
    }
    for (int i=0; i<zombi2.length; i++) {
      zombi2[i].dibujarZombie();
    }
    for (int i=0; i<zombi3.length; i++) {
      zombi3[i].dibujarZombie();
    }
    for (int i=0; i<zombi4.length; i++) {
      zombi4[i].dibujarZombie();
    }
    mira.dibujarMira();
    personaje.contador();
   // zombie.zombieMuerte();
  }
  void controlesJuego() {
    personaje.disparar();
  }
}
