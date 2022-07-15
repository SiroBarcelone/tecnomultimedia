float edist, etam, posin;
int ey=-50;
int i=0;
int movbalaenem = 0;
boolean disparadaA;
float balax, balay;
boolean choqueE;
int counter=0;
int imgcounter=0;
int countenemigo=0;

void enemigo(float ex) {
  balax=ex;
  balay=ey;
  etam=84;
  i++;
  if (i>1) {
    i=0;
  }
  imageMode(CENTER);
  textSize(20);
  fill(255);
  text("Enemigos derribados: "+counter, 10, 20);
  balaenemiga.resize(10, 20);
  image(balaenemiga, balax, balay+movbalaenem);
  image(avionesA [i], ex, ey, etam, etam);
  ey+=random(5.5,6);
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
  if (edist<30) {
    choqueE=true;
  }
  if (choqueE==true) {
    
    image(explosion, ex, ey, etam, etam);
    counter++;
    imgcounter++;
    if(imgcounter>20){
    ey=-100;
    balay=-100;
    imgcounter=0;
    counter-=20;
    }
    if (ey<100) {
      choqueE=false;
    }
  }

  if (ey>height+etam) {
    ey=-100;
    choqueE=false;
    countenemigo+=1;
  }
}
