class Comida {
  int Ctam=20;
  float CYpos;
  float CXpos;
  int comidacount;
  int contador;
  float tiempo=0;
  boolean comer;
  PImage[] comida = new PImage[10];
  
  Comida(float _CXpos, float _CYpos) {
    contador=-1;
    CXpos=_CXpos;
    CYpos=_CYpos;
    tiempo=millis();
    comida[0]=loadImage("comida1.png");
    comida[1]=loadImage("comida2.png");
    comida[2]=loadImage("comida3.png");
    comida[3]=loadImage("comida4.png");
    comida[4]=loadImage("comida5.png");
  }

  void posicionComida() {
    comer=false;
    if(comer==false){
     tiempo=0; 
    }
    comidacount=int(random(0, 4));
    CYpos=random(height);
    CXpos=random(width);
  }

  void dibujarComida() {
    fill(255, 0);
    ellipse(CXpos, CYpos, Ctam, Ctam);
    image(comida[comidacount], CXpos, CYpos, 20, 30);
    fill(200, 0, 0);
    text("comida obtenida: " + contador, 30, 30);
  }
}
