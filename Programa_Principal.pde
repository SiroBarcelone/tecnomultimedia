barco barkito;
barco barkito2;
barco barkito3;
agua agua;

class programaPrincipal {

  programaPrincipal() {
  }

  void programa() {
    barkito = new barco(color(255), color(209, 115, 0), 0, 300, 0.4);
    barkito2 = new barco(color(random(0, 255)), color(255, 185, 0), 0, 100, 0.5);
    barkito3 = new barco(color(0), color(209, 815, 200), 0, 500, 0.3);
    agua= new agua(40, 30);
  }
  void dibujarPrograma() {
    agua.dibujarOlas();
    barkito.dibujarBarco();
    barkito.moverBarco();
    barkito2.dibujarBarco();
    barkito2.moverBarco();
    barkito3.dibujarBarco();
    barkito3.moverBarco();
  }
}
