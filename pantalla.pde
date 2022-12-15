class Pantalla {
  Botones boton1;
  Botones boton2;
  int pantalla;
  int counterPantalla=millis();
  boolean mostrarPantallas=true;
  PImage menu;
  PImage [] pantallas= new PImage [7];
  Juego juego;

  Pantalla() {
    boton1 = new Botones(0, 480, width, 30);
    boton2 = new Botones(0, 550, width, 30);
    for (int i; i<pantallas.length; i++) {
      pantallas[i]=loadImage("img"+i+".jpg");
    }
    juego= new Juego();
  }

  void dibujarPantalla(String _Ptexto, PImage _Pimagen) {
    pantallas=_Pimagen
    imageMode(CORNER);
    image(
  }

  void mousePressed() {
    //    if ( mouseX > boton1.X && mouseX <boton1.X+boton1.Xtam && mouseY > boton1.Ytam && mouseY < boton1.Y + boton1.Ytam && mousePressed) {
    //      println("presionado");
    //      boton1.presionado=true;
    //      pantalla=boton1.pantallaNum;
    //    }
    //    if ( mouseX > boton2.X && mouseX <boton2.X+boton2.Xtam && mouseY > boton2.Ytam && mouseY < boton2.Y + boton2.Ytam && mousePressed) {
    //      println("presionado");
    //      boton2.presionado=true;
    //    }

    if (boton1.presionado==true) {
      pantalla=boton1.pantallaNum;
    }
  }
}
