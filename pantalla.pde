class Pantalla {
  Botones boton1;
  Botones boton2;
  PImage menu;
  PImage [] Pimagen= new PImage [7];
  int pantallasig1, pantallasig2;
  color Tcolor;
  String tboton1, tboton2;

  Pantalla() {
    boton1 = new Botones(0, 480, width, 30);
    boton2 = new Botones(0, 550, width, 30);
    for (int i=0; i<Pimagen.length; i++) {
      Pimagen[i]=loadImage("img"+i+".jpg");
    }
  }

  void draw(String Ptexto, int img, color _Tcolor, String _tboton1, String _tboton2, int _pantallasig1, int _pantallasig2) {
    pantallaClick();
    pantallasig1=_pantallasig1;
    pantallasig2=_pantallasig2;
    tboton1=_tboton1;
    tboton2=_tboton2;
    Tcolor=_Tcolor;
    imageMode(CORNER);
    image(Pimagen[img], 0, 0, width, height);
    fill(Tcolor);
    text(Ptexto, 5, 5, width-5, height-5);
    boton1.dibujarBoton(pantallasig1, tboton1);
    boton2.dibujarBoton(pantallasig2, tboton2);
    if (pantallasig2==0) {
      boton2.boton=false;
    } else {
      boton2.boton=true;
    }
    if (pantallasig1==0) {
      boton1.boton=false;
    } else {
      boton1.boton=true;
    }
  }

  void pantallaClick() {
    if (boton1.presionado==true) {
      aventura.pantallaNum=pantallasig1;
      println("presionado1");
    }
    if (boton2.presionado==true) {
      aventura.pantallaNum=pantallasig2;
      println("presionado2");
    }
  }
}
