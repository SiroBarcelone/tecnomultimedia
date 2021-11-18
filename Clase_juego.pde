class Juego {
  int i = 0, puntos = 0;
  boolean choque = false;
  Nave Nave; 
  Fondo Fondo;
  Ast Ast;
  Ast [] asts = new Ast[6];
  Fondo [] fondos = new Fondo[30];
  float distancia, distancia1, distBarril;
  Barril Barril;
  Menu Menu;


  Juego() {
    Ast = new Ast();
    Nave = new Nave();
    for (i=0; i<asts.length; i++) {
      asts[i] = new Ast();
    }
    Fondo = new Fondo();
    for (int a=0; a<fondos.length; a++) {
      fondos[a]= new Fondo();
    }
    Barril = new Barril();
    Menu = new Menu();
    Menu.inicio=false;
  }

  void dibujarJuego() {

    for (int a=0; a<fondos.length; a++) {
      fondos[a].dibujarFondo();
      fondos[a].moverFondo();
    }
    Fondo.dibujarFondo();
    if (Menu.inicio == true) {
      noCursor();
      Ast.dibujarAsteroide();
      for (int i=0; i<asts.length; i++) {
        asts[i].dibujarAsteroide();
        asts[i].movAsteroide();
      }
      Barril.dibujarBarril();
      Nave.dibujarNave();
      colision();
      fill(255);
      textSize(30);
      text("puntos:", 20, 40);
      text(puntos, 130, 40);
    } else {
      Menu.dibujarMenu();
      choque=false;
    }
  }

  void movimiento() {
    Fondo.moverFondo();
    Nave.moverNave();
    Ast.movAsteroide();
    Barril.movBarril();
  }

  void colision() {
    for (int i=0; i<asts.length; i++) {
      distancia=dist(Nave.ny, Nave.nx, asts[i].ay, asts[i].ax);
      distancia1=dist(Nave.ny, Nave.nx, Ast.ay, Ast.ax);
      if (distancia<Nave.ntam-20+asts[i].atam-20|distancia1<Nave.ntam-20+asts[i].atam-20) {
        choque=true;
      }
    }
    if (choque && Menu.inicio ==true) {
      Nave.colisionNave();
      println("CHOCÓ");
      puntos=0;
      fill(40, 10, 255, 30);
      rectMode(CORNER);
      rect(100, 100, 600, 400);
      fill(255, 255, 0);
      text("R para reiniciar", 300, 300);
    }
    distBarril=dist(Nave.ny, Nave.nx, Barril.by, Barril.bx);
    if (distBarril<Nave.ntam-15+Barril.btam-15) {
      puntos++;
      Barril.by=-300;
      Barril.bx=random(0, width);
      Barril.numImag++;
    }
  }

  void Iniciar() {
    Menu.inicio=true;
  }

  void reiniciar() {
    if (key=='r') {
      choque=false;
    }
  }
}
