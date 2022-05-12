PImage fondo, fondo2, fondo3, fondo4, cursor, logo;
int dir,mov, contador, click;
PFont fuente;
boolean load;

void setup(){
  background(0);
  size(800,500);
  dir=0;
  contador=0;
  frameCount=contador;
  click=0;
}

void draw(){
 contador++;
 noCursor();
 fuente=loadFont("SOC.vlw");
 fondo=loadImage("fondo"+click+".jpg"); 
 cursor=loadImage("espadita.png");
 logo=loadImage("logo.png");
 image(fondo,0,0,800,500);
 if(frameCount>10){
 dir=dir-3;
 }
 image(cursor, mouseX, mouseY, 70, 70);
 fill(0);
 textFont(fuente);
 if(load==true){
 if(click==0){
    image(logo,100,dir);
    textSize(20);
    text("DISEÑO DE JUEGO", 200,400+dir);
    textSize(12);
    text("Fumito Ueda", 350,430+dir);
 }
 if(click==1){
    textSize(20);
    text("PLANIFICACIÓN Y PRODUCCIÓN DEL JUEGO", 200,400+dir);
    textSize(12);
    text("Masashi Kudo, Takashi Izutani, Takeshi Asano, Makoto Yamaguchi", 350,430+dir);
 }
  if(click==2){
    textSize(20);
    text("ANIMACIÓN DE PERSONAJES",  200,400+dir);
    textSize(12);
    text("Atsuko Fukuyama, Masanobu Tanaka, Daisuke Ochikawa, Sosuke Honda, Tatsushiko Tachibe, Pequeño Rory", 350,430+dir,200,600); 
 }
   if(click==3){
    textSize(20);
    text("DISEÑO DE CAMPO",200,400+dir);
    textSize(12);
    text("koji hasegawa, Masanori Kajita, kazuhiro numata, Takeshi Okazawa, kayoko sato, kibi wakisaka, Atsuhiko Terada, Takeshi Ochiai, Nanako Omur, Mitsuhiro Shimooki, Katsuhiko Abe", 350,430+dir,100,700); 
 }
 if(click==4){
    textSize(20);
    text("COMPOSICIÓN MUSICAL", 200,400+dir);
    textSize(12);
    text("Ko Otani", 350,430+dir);
 }
 
}else{
  fill(0);
  textSize(20);
  text("CLICK AQUÍ PARA EMPEZAR.\nCLICK A LA DERECHA PARA AVANZAR, CLICK A LA IZQUIERDA PARA RETROCEDER", width/2-100,height/2,300,600); 
}
}

void mousePressed(){
  if(mouseX<600 && mouseX>300){
  load=true;
  }
  if(load==true){
  if(mouseX>600){
    click++;
    dir=0;
    if(click>4){
      click=0;
    }
  }
    if(mouseX<300){
      click--;
      dir=0;
      if(click<0){
       click=4; 
      }
    }   
    if(load==false){
      mouseX=width/2;  
    }
  }
}
