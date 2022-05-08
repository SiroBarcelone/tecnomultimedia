PImage fondo, cursor, logo;
int dir,mov, contador;
PFont fuente;

void setup(){
  background(0);
  size(800,500);
  dir=0;
  contador=0;
  frameCount=contador;
}

void draw(){
 contador++;
 noCursor();
 fuente=loadFont("SOC.vlw");
 fondo=loadImage("fondo.jpg");
 cursor=loadImage("espadita.png");
 logo=loadImage("logo.png");
 image(fondo,0,0,800,500);
 image(logo,100,dir);
 if(frameCount>10){
 dir=dir-3;
 }
 fill(0);
 textFont(fuente);
 textSize(12);
 text("Fumito Ueda", 350,430+dir);
 text("Masashi Kudo, Takashi Izutani, Takeshi Asano, Makoto Yamaguchi", 350,530+dir,100,200);
 text("Atsuko Fukuyama, Masanobu Tanaka, Daisuke Ochikawa, Sosuke Honda, Tatsushiko Tachibe, Pequeño Rory", 350, 680+dir,100,200); 
 text("koji hasegawa, Masanori Kajita, kazuhiro numata, Takeshi Okazawa, kayoko sato, kibi wakisaka, Atsuhiko Terada, Takeshi Ochiai, Nanako Omur, Mitsuhiro Shimooki, Katsuhiko Abe", 350, 880+dir,100,500);
 text("Ko Otani", 350,1130+dir);
 textSize(20);
 text("DISEÑO DE JUEGO", 200,400+dir);
 text("PLANIFICACIÓN Y PRODUCCIÓN DEL JUEGO", 200,500+dir);
 text("ANIMACIÓN DE PERSONAJES", 200,650+dir);
 text("DISEÑO DE CAMPO",200,850+dir);
 text("COMPOSICIÓN MUSICAL", 200, 1100+dir);
 image(cursor, mouseX, mouseY, 70, 70);
}
