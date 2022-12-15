class Botones {
  boolean boton;
  boolean apoyado;
  boolean presionado;
  float X, Y, Xtam, Ytam;
  int pantallaNum;

  Botones (float _X, float _Y, float _Xtam, float _Ytam) {
    X=_X;
    Y=_Y;
    Xtam=_Xtam;
    Ytam=_Ytam;
    apoyado=false;
    presionado=false;
    boton=true;
  }

  void dibujarBoton(int _pantallaNum, String texto) {
    if (boton==true) {
      pantallaNum=_pantallaNum;
      rectMode(CORNER);
      noStroke();
      fill(50, 0);
      rect(X, Y, Xtam, Ytam);
      fill(255);
      textSize(20);
      text(texto, X+10, Y+18);
      if ( mouseX > X && mouseX <X+Xtam && mouseY > Y && mouseY < Y + Ytam) {
        apoyado=true;
        fill(20, 0, 255, 80);
        rect(X, Y, Xtam, Ytam);
        fill(255);
        text(texto, X+10, Y+18);
        mousePressed();
      }
    }
  }

  void mousePressed() {
    if (apoyado==true && mousePressed) {
      presionado=true;
    } else {
      presionado=false;
    }
  }
}
