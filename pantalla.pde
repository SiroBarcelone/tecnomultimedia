class Pantalla {
  Botones boton1;
  Botones boton2;
  PImage menu;
  PImage [] Pimagen= new PImage [10];
  int pantallasig1, pantallasig2;
  color Tcolor;
  boolean mostrarBoton1, mostrarBoton2;


  Pantalla() {
    mostrarBoton1=true;
    mostrarBoton2=true;
    boton1 = new Botones(0, 480, width, 30);
    boton2 = new Botones(0, 550, width, 30);
    for (int i=0; i<Pimagen.length; i++) {
      Pimagen[i]=loadImage("img"+i+".jpg");
      if (i==10) {
        i=0;
      }
    }
  }

  void draw(String Ptexto, int img, color _Tcolor, String tboton1, String tboton2) {
    Tcolor=_Tcolor;
    imageMode(CORNER);
    image(Pimagen[img], 0, 0, width, height);
    fill(Tcolor);
    text(Ptexto, 5, 5, width-5, height-5);

    boton1.dibujarBoton(tboton1);
    boton2.dibujarBoton(tboton2);

    if (mostrarBoton1==false) {
      boton1.boton=false;
    } else if (mostrarBoton1==true) {
      boton1.boton=true;
    }

    if (mostrarBoton2==false) {
      boton2.boton=false;
    } else if (mostrarBoton2==true) {
      boton2.boton=true;
    }

    if (boton1.presionado==true) {      
      //println("presionado 1");
    }
    if (boton2.presionado==true) {     
      //println("presionado 2");
    }
  }

  void mouseClicked(int _pantallasig1, int _pantallasig2) {
    pantallasig1=_pantallasig1;
    pantallasig2=_pantallasig2;
    boton1.mouseClicked(pantallasig1);
    boton2.mouseClicked(pantallasig2);

    if (boton1.presionado==true && mostrarBoton1==true) {
      aventura.pantallaNum=pantallasig1;
    }
    if (boton2.presionado==true && mostrarBoton2==true) {
      aventura.pantallaNum=pantallasig2;
    }
  }
}
