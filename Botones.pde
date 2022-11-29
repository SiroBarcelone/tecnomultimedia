class Botones {
  boolean apoyado;
  boolean presionado;
  float X, Y, Xtam, Ytam;

  Botones (float _X, float _Y, float _Xtam, float _Ytam) {
    X=_X;
    Y=_Y;
    Xtam=_Xtam;
    Ytam=_Ytam;
    apoyado=false;
    presionado=false;
  }

  void dibujarBoton() {
    rectMode(CORNER);
    noStroke();
    fill(50, 80);
    rect(X, Y, Xtam, Ytam);
    if ( mouseX > X && mouseX <X+Xtam && mouseY > Y && mouseY < Y + Ytam) {
      apoyado=true;
      fill(255, 20, 0, 80);
      rect(X, Y, Xtam, Ytam);
    }
      //if ( mouseX > X && mouseX <X+Xtam && mouseY > Ytam && mouseY < Y + Ytam && mousePressed) {
        //println("presionado");
        //presionado=true;
   // }
  }

  void textoBoton(String texto) {
    fill(255);
    textSize(20);
    text(texto, X+10, Y+18);
  }
}
