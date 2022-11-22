class Comida {
  int Ctam=20;
  float CYpos;
  float CXpos;
  int comidacount;
  int contador;
  float tiempo=0;
  boolean comer;
  PImage[] comida = new PImage[10];  
  Comida() {
    tiempo=millis();
    comida[0]=loadImage("comida1.png");
    comida[0].resize(Ctam, Ctam);
    comida[1]=loadImage("comida2.png");
    comida[1].resize(Ctam, Ctam);
    comida[2]=loadImage("comida3.png");
    comida[2].resize(Ctam, Ctam);
    comida[3]=loadImage("comida4.png");
    comida[3].resize(Ctam, Ctam);
    comida[4]=loadImage("comida5.png");
    comida[4].resize(Ctam, Ctam);
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
    fill(255);
    ellipse(CXpos, CYpos, Ctam, Ctam);
    image(comida[comidacount], CXpos, CYpos);
    //-----------------Lógica de puntaje-----------------------------------
    if (dist(CXpos, CYpos, Personaje.Xpos, Personaje.Ypos) < Ctam) {
      comer=true;
    }
    if (comer==true) {
      CYpos=random(height);
      CXpos=random(width);
      contador+=1;
      tiempo++;
      println("agarrado");
      if(Personaje.herido==true){
        Personaje.herido=false;
        Personaje.vida=true;
      }
      if(tiempo>0.5){
       comer=false;
      }
    }
    fill(200, 0, 0);
    text("comida obtenida: " + contador, 30, 30);
  }
}
