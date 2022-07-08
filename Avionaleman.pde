PImage [] avionesA = new PImage[2];
PImage balaenemiga;
float edist, etam, posin;
int ey=-50;
int i=0;
int movbalaenem = 0;
boolean disparadaA;
float balax, balay;
boolean choqueE;
int counter=0;

void enemigo(float ex) {
  balax=ex;
  balay=ey;
  etam=84;
  i++;
  if (i>1) {
    i=0;
  }
  imageMode(CENTER);
  text("Enemigos derribados: "+counter, 10, 10);
  avionesA [0] = loadImage("Avionaleman0.png");
  avionesA [1] = loadImage("Avionaleman1.png");
  balaenemiga=loadImage("disparo1.PNG");
  balaenemiga.resize(10, 20);
  image(balaenemiga, balax, balay+movbalaenem);
  image(avionesA [i], ex, ey, etam, etam);
  ey+=6;
  if (ey<-25) {
    posin=random(0+etam/2, width-etam/2);
  }

  if (ey>10 && ex>ax-30 && ex<ax+30) {
    disparadaA=true;
  }
  if (balay>height) {
    disparadaA=false;
  }
  if (disparadaA==true) {
    movbalaenem+=20;
  } else if (disparadaA== false) {
    movbalaenem = 0;
    balay=ey;
  }


  edist= dist(bx, by+movbala, ex, ey);
  if (edist<50) {
    choqueE=true;
  }
  if (choqueE==true) {
    explosion = loadImage("explosion.png");
    image(explosion, ex, ey, etam, etam);
    counter++;
    ey=-100;
    balay=-100;
    if (ey<100) {
      choqueE=false;
    }
  }

  if (ey>height+etam) {
    ey=-100;
    choqueE=false;
  }
}
