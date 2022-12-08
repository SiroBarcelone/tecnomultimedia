class Aventura {
  Juego juego;
  Pantalla pantalla;
  Botones boton1;
  Botones boton2;

  Aventura() {
    juego = new Juego();
    pantalla = new Pantalla();
    boton1 = new Botones(0, 480, width, 30);
    boton2 = new Botones(0, 550, width, 30);
  }

  void dibujarAventura() {
    
  }
}
