PFont fuente;
int Y, abajo, costado, tam;
PImage casco, aguila, sangre1, sangre2;


void setup(){
  size(800,600);
  loadFont("TNR.vlw");
  fuente = loadFont("TNR.vlw");
  textFont(fuente);
  tam = 0;
  abajo = 2120;
  costado = 0;
  Y = 600;
  casco = loadImage("CascoNazi.png");
  aguila = loadImage("AguilaNazi.png");
  sangre1 = loadImage("Sangre1.png");
  sangre2 = loadImage("Sangre2.png");
}

void draw(){
  tam = tam + 1;
  abajo = abajo - 1;
  costado = costado + 1;
  Y = Y-1;
  background(0);
  image(casco, 100, 100);
  image(aguila, 100, 1000 + abajo);
  if(abajo < 1500){
    image(sangre2, 0, 0);
  }
  if(abajo < 1000){
    image(sangre1, 400, 100);
  }
  fill(255,197,3);
  textSize(40);
  text("Written and directed by", 100, 50 + Y);
  textSize(80);
  text("Quentin Tarantino", 80, 120 + Y);
  fill(0);
  rect(width,height,width,height);
  fill(255,197,3);
  textSize(40);
  text("Edited by",100, 400 + Y);
  textSize(80);
  text("Sally Menke", 100, 470 + Y);
  textSize(40);
  text("Casting by", 100, 750 + Y);
  textSize(80);
  text("Johanna Ray", 100, 820 + Y);
  text("Jenny Jue", 100, 880 + Y);
  text("Simone Bar", 100, 940 + Y);
  text("Olivier Carbone", 100, 1000 + Y);
  textSize(40);
  text("Visual effects designer", 100, 1280 + Y);
  textSize(80);
  text("John Dykstra", 100, 1350 + Y);
  textSize(40);
  text("Special makeup effects by", 100, 1630 + Y);
  textSize(80);
  text("Gregory Nicotero", 100, 1700 + Y);
  text("Howard Berger", 100, 1770 + Y);
  textSize(40);
  text("costume designer", 100, 2050 + Y);
  textSize(80);
  text("Anna B. Sheppard", 100, 2120 + Y);
}
