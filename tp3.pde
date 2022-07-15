//https://youtu.be/pp4OrN9ddag

int mov;
PImage [] avionesA = new PImage[2];
PImage balaenemiga;
PImage [] avionesR = new PImage[2];
PImage img, explosion, bala;
PImage menufondo, perdiste;
boolean menu, perdida;
PFont fuente;


void setup() {
  fuente=loadFont("ruso.vlw");
  size(800, 600);
  menufondo=loadImage("menu.jpg");
  perdiste=loadImage("Perdida.jpg");
  avionesA [0] = loadImage("Avionaleman0.png");
  avionesA [1] = loadImage("Avionaleman1.png");
  balaenemiga=loadImage("disparo1.PNG");
  avionesR [0] = loadImage("AvionRuso0.png");
  avionesR [1] = loadImage("AvionRuso1.png");
  bala=loadImage("disparo.PNG");
  img = loadImage("AvionRuso1.png");
  explosion = loadImage("explosion.png");
  menufondo.resize(width, height);
  perdiste.resize(width, height);
  menu=true;
}


void ejecutar() {
  if (key==32 && menu==true) {
    menu=false;
  }
}

void draw() {
  keyPressed();
  if (menu==true) {
    image(menufondo, 0, 0);
    fill(200, 0, 0);
    textFont(fuente);
    textSize(60);
    text("Alas sobre el Volga", width-700, 150);
    fill(255, 216, 15);
    textSize(20);
    text("Camarada, muévase con las flechitas, dispare con la barra, y ¡cumpla su misión!", width-700, 340, 600, 300);
    fill(0);
    text("barra espaciadora para empezar", width-700, 500, 600, 800);
  } else if (menu==false||perdida==false) {
    mov+=20;
    background(0, 80, 200);
    fondo();
    avion(30);
    enemigo(posin);
    moverAvion();
    if (countenemigo>3) {
      perdida=true;
    }else if(countenemigo==0){
      perdida=false;
    }
  }
  if (perdida==true) {
    image(perdiste, width/2, height/2);
    fill(255, 0, 0);
    textSize(40);
    text("PERDISTE", width-700, 200);
    textSize(30);
    text("las flotas de la Luftwaffe han cruzado\nel Volga", width-700, 300);
    fill(0);
    textSize(20);
    text("Toca R para reiniciar", width-700, 400);
    counter=0;
  }
}

void reiniciar() {
  if (key=='r') {
    countenemigo=0;
  }
}

void keyPressed() {
  disparar();
  ejecutar();
  reiniciar();
}
