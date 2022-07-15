boolean choque, disparada;
float adist;
int ax=400;
int ay=500;
int bx, by;
int c = 0;
int movbala = 0;



void avion (int atam) {
  c++;
  if (c>1) {
    c=0;
  }
  bx=ax;
  by=ay;


  bala.resize(10, 20);
  image(bala, bx, by+ movbala);
  image(avionesR [i], ax, ay, atam*3, atam*2);
  adist= dist(0, 0, ax, ay);

  if (disparada==true) {
    movbala-=40;
  } else if (disparada== false) {
    movbala = 0;
  }
  if (movbala<-500) {
    disparada=false;
  }

  imageMode(CENTER);
  if (choque==false) {
  } else {
    image(explosion, ax, ay, atam*4, atam*4);
  }
}

void moverAvion() {
  if (keyPressed && (key==CODED)) {
    if (keyCode==UP) {
      ay--;
    }
    if (keyCode==DOWN) {
      ay++;
    }
    if (keyCode==RIGHT) {
      ax+=6;
    }
    if (keyCode==LEFT) {
      ax-=6;
    }
  }
  if (ax<45) {
    ax=45;
  }
  if (ax>745) {
    ax=745;
  }
  if (ay<400) {
    ay=400;
  }
  if (ay>650) {
    ay=650;
  }
}


void disparar() {
  if (key==32) {
    disparada=true;
  }
}
