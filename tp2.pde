//  https://youtu.be/mCNGeueNGj0

int cant= 55;
int mov= 0;
int min = 0;
float tam, ubiY,ubiX,grosor, c;

void setup() {
  size(800, 800);
  surface.setResizable (true);
  rectMode(CENTER);
  stroke(0);
  fill(255);
  noCursor();
}

void draw() {
  background(0);
  mov++;

  for (c=0; c<cant; c++) {
     tam = map(c, 0, cant-1, width*2, min);
     ubiY = map(c, 0, cant, height/2, mouseY);
     ubiX = map(c, 0, cant, width/2, mouseX);
     grosor = map(c, 0, cant, 30, 1);
     strokeWeight(grosor);
    if (mov>=32) {
      mov=min; 
    }
    rect(ubiX, ubiY, tam+mov, tam+mov);
  }
}

void mousePressed() {
  stroke(random(0, 255),random(0, 255), random(0, 255));
  fill(random(0, 255), random(0, 255), random(0, 255), random(10,255));
}

void keyPressed () { 
  if (key == 'r') { 
      stroke(0);
      fill(255);
    }
  }
