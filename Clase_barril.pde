class Barril {
  
  Nave Nave;

  int numImag;
  float by, bx, btam, bvel, distBarril;
  PImage [] barriles = new PImage[4];
 
  Barril() {
    barriles[0] = loadImage("oil1.png");
    barriles[1] = loadImage("oil2.png");
    barriles[2] = loadImage("oil3.png");
    barriles[3] = loadImage("oil4.png");
    by = -200;
    bx = random(0,width);
    btam = 40;
    bvel = 4;
  }

  void dibujarBarril() {
     if(numImag==4){
      numImag=0;
    }
    fill(255);
    rectMode(CENTER);
    rect(bx, by, btam, btam);
    imageMode(CENTER);
    image(barriles[numImag], bx, by, btam*2, btam*2);
    //numImag++;
  }

void movBarril() {
    //image(barriles[numImag], bx, by);
    by+=bvel;
    if (by>height+btam) {
      bx=random(0, width);
      btam = 40;
      by=-300;
      bvel = 4;
      numImag++;
    }
  }
}
