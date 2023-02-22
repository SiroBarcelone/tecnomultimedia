class Botones {
  boolean boton;
  boolean apoyado;
  boolean presionado;
  float X, Y, Xtam, Ytam;
  int pantallaNum;
  boolean playingBoton=false;


  Botones (float _X, float _Y, float _Xtam, float _Ytam) {
    X=_X;
    Y=_Y;
    Xtam=_Xtam;
    Ytam=_Ytam;
    apoyado=false;
    presionado=false;
    botones = minim.loadFile("boton.wav");
    if (playingBoton==true) {
      botones.play();
    } else {
      botones.pause();
    }
  }

  void dibujarBoton(String texto) {
    if (boton==true) {
      rectMode(CORNER);
      noStroke();
      fill(50, 0);
      rect(X, Y, Xtam, Ytam);
      fill(255);
      textSize(20);
      text(texto, X+10, Y+18);
      if ( mouseX > X && mouseX < X + Xtam && mouseY > Y && mouseY < Y + Ytam) {
        apoyado=true;
        fill(200, 0, 25, 90);
        rect(X, Y, Xtam, Ytam);
        fill(255);
        text(texto, X+10, Y+18);
      } else {
        apoyado=false;
      }
    }
  }

  void mouseClicked(int _pantallaNum) {
    pantallaNum=_pantallaNum;
    if (boton==true) {
      if (apoyado==true) {
        presionado=true;
        if (presionado==true) {
          botones.play();
        }
      } else {
        presionado=false;
        if (presionado==false) {
          //botones.mute();
          botones.rewind();
        }
      }
    }
  }
}
