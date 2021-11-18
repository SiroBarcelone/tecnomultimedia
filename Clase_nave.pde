class Nave {
  
PImage img, explosion;
boolean choque;
float ny, nx, ntam, ndist;
 Nave() {
    ntam = 40;
    nx = mouseX;
    ny = mouseY;
    img = loadImage("nave.png");
    explosion = loadImage("explosion.png");
    ndist= dist(0,0,nx,ny);
  }

void dibujarNave() {
    rectMode(CENTER);
    fill(0);
    rect(nx, ny, ntam, ntam);
    imageMode(CENTER);
    if(choque==false){
      image(img,nx,ny,ntam*2,ntam*2);
    }
}
    
void colisionNave(){
      image(explosion,nx,ny,ntam*4,ntam*4);
}

void moverNave(){
  nx = mouseX;
  ny = mouseY;
}
}
